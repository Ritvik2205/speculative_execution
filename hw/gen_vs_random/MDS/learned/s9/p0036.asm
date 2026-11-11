.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -122
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
test cl, al
or al, 30
bt ax, si
test dil, -80
or bl, 43
xor cl, -13
xor dl, bl
not dil
xor rdi, -9
xor ebx, 2
and edx, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
