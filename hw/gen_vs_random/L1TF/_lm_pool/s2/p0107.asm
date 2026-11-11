.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 93
sub dl, bl
add dil, 88
and rax, 1994547909
cmp dil, bl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and dil, cl
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
