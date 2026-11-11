.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -109 # instrumentation
cmovns cx, bx
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
sbb dl, bl
adc eax, -1127383570
not ebx
add al, 121 # instrumentation
movsx edi, si
add dl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
cmovbe ecx, ecx
adc si, -110
not rcx
neg cx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
or dl, al
cmovnz edi, ecx
btc rsi, 77
test sil, -119
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
or bl, al
sub bl, -89
movsx edx, sil
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmovnbe eax, eax
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
add al, dl
cmp al, -122
sbb ebx, -54
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdi
cmovnle di, bx
or rax, -823069511
add dl, 45 # instrumentation
cmovbe rbx, rsi
cmovb dx, si
mov cl, al
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
add bl, -2 # instrumentation
cmovs rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
