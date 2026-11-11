.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and sil, 111
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sub rdi, 27
test dil, -116
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
