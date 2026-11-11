.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
add rdx, 95
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
sub al, bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
adc cl, -81
cmp rsi, 53
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test rsi, -1408527332
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
