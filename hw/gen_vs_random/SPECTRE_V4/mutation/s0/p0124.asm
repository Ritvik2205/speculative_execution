.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 45 # instrumentation
cmovbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
or dl, al
movsx edx, sil
or rax, 980130592
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
cmovnle di, bx
not ebx
adc eax, -689629357
adc si, -110
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
sbb dl, bl
cmovnbe eax, eax
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
cmovbe ecx, ecx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
neg cx
add dl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
add bl, -2 # instrumentation
cmovs rsi, rdi
or bl, al
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
cmp al, 105
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
sbb ebx, -54
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
cmovnz edi, ecx
test sil, 16
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
cmovb dx, si
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
add al, -109 # instrumentation
cmovns cx, bx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
add al, 121 # instrumentation
movsx edi, si
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
not rcx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
sub bl, 66
add al, dl
mov cl, al
btc rsi, 36
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
