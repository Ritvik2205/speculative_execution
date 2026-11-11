.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
sub cl, -47
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
sub cl, -47
setns bl
add dl, 47
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
or sil, al
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
lea rbx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
