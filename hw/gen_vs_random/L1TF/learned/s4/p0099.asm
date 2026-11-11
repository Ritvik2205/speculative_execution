.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
cmp eax, -127
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
test ax, 13879
lea dx, qword ptr [rbx + rdi + 72]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
