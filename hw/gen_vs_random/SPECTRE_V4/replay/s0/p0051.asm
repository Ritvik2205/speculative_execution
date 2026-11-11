.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 45 # instrumentation
cmovbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
add al, 121 # instrumentation
movsx edi, si
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
neg cx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
btc rsi, 97
add al, -109 # instrumentation
cmovns cx, bx
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
movsx edx, sil
adc eax, -60
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
test sil, 1
mov cl, al
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
or bl, al
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdi
cmovb dx, si
adc si, -74
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
cmovnle di, bx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
not ebx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
or rax, 185991441
not rcx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
add bl, -2 # instrumentation
cmovs rsi, rdi
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmovnz edi, ecx
cmovnbe eax, eax
sub bl, 56
sbb ebx, -54
add al, dl
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
cmp al, 105
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
or dl, al
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
add dl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
cmovbe ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
