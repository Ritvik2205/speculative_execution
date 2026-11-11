.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and dl, bl
or rdx, -48
and dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
