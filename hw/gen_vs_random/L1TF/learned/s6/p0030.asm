.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 19
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
cmp dl, -56
xor al, bl
cmp cl, -89
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
sbb sil, 19
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
add eax, 871834813
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
