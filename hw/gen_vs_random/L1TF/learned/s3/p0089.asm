.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
or dil, cl
test eax, -2032743474
xor dl, bl
or rax, -443578116
or dil, -113
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test ecx, 87
sbb ax, -9396
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
