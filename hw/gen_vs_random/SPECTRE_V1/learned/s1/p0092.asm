.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
sbb dl, sil
add sil, 2
test dil, bl
and al, 33
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rbx, qword ptr [rax + rdx + 18]
add al, bl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb rcx, 72
lea rcx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
