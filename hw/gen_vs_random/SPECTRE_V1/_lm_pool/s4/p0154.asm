.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
inc dil
test sil, 47
lea eax, qword ptr [rcx + rcx + 38]
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
lea eax, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
test dl, -105
sub cl, -21
adc eax, 1725322202
sbb sil, -78
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
