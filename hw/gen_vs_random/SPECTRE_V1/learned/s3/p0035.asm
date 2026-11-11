.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 62
cmp rax, -1877933118
test dil, -116
sub dil, dl
and bl, cl
lea bx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
