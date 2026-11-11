.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
sub cl, -49
lea rdx, qword ptr [rsi + rax + 82]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
