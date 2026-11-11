.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
sub al, dil
test ecx, 82
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 46
lea si, qword ptr [rax + rsi + 13]
test di, 71
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
