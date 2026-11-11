.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
test dil, -116
or sil, 52
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, bl
sub sil, bl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
add dl, 47
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
