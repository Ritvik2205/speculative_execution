.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and al, 33
and rax, 2134929425
xor cl, dil
xor cl, dil
add al, dl
test al, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
