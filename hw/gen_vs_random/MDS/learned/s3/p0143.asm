.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 1
xor cl, sil
xor rdi, -9
or al, dl
test al, cl
or al, dl
xor al, 9
test al, dil
or al, 37
and bx, 44
xor rdi, -9
xor al, sil
and rbx, 65
bt dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
