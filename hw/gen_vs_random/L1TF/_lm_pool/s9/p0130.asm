.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
adc al, 80
sub bl, 15
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 55
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 89
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
lea cx, qword ptr [rdx]
sbb eax, -1165635662
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
