.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
sbb bl, cl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
sub rdx, 71
sub bl, -6
sbb rax, 786640702
lea rcx, qword ptr [rsi + rdx + 29]
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp al, 23
jmp .bb_0.3
.bb_0.3:
add bl, 65 # instrumentation
cmovo rbx, rdi
lea di, qword ptr [rsi]
or rax, -1571963467
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
