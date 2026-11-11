.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 5
lea cx, qword ptr [rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub dl, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
test dil, -116
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
bswap rax
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
