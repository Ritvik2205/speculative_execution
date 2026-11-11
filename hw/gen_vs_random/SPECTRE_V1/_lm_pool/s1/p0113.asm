.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
add al, 10
sub al, 63
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
sub al, -66
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
cmp rax, 900122030
xor dl, 71
lea cx, qword ptr [rbx]
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
