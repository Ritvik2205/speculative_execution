.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or rcx, 37
cmovnp di, dx
and si, 14
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
sub dl, -49
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
or si, 0b1000000000000000 # instrumentation
bsf bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
