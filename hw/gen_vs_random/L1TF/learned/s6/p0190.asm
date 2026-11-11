.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -92
cmp rax, 16650668
xor rbx, 59
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
btr bx, 104
sbb bl, cl
sub rax, -15
or al, -57
jmp .bb_0.1
.bb_0.1:
or bx, cx
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
