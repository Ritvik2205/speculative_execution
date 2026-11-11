.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, sil
add al, dl
or dl, al
add dl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
cmovbe ecx, ecx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
btc rsi, 36
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
or bl, al
add al, 121 # instrumentation
movsx edi, si
sub bl, -89
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
sbb dl, bl
cmp al, 98
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
test sil, -119
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
or rax, -387680856
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
add bl, -2 # instrumentation
cmovs rsi, rdi
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
neg cx
cmovnle di, bx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
cmovnz edi, ecx
adc si, -74
add dl, 45 # instrumentation
cmovbe rbx, rsi
adc eax, -3570960
cmovb dx, si
not rcx
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
not ebx
add al, -109 # instrumentation
cmovns cx, bx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
mov cl, al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdi
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
cmovnbe eax, eax
sbb ebx, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
