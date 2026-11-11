.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
sbb al, bl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovle rdi, rcx
and al, -68
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb bl, dl
or al, -48
xor al, 38
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
