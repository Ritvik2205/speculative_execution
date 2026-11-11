.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
add al, -47
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 87
sbb al, dil
and bl, -65
or rdx, 92
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
cmp al, dl
sbb bl, dil
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
