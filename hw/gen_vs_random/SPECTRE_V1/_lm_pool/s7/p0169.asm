.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 70
sbb cl, 105
sub al, -66
add rcx, 23
and dil, cl
lea dx, qword ptr [rsi]
and bl, 87
lea di, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
cmovnle rdi, rcx
add al, dil
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
