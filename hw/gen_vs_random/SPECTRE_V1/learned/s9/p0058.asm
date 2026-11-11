.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
or dl, 41
cmp al, cl
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
cmp cl, 91
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
jle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
