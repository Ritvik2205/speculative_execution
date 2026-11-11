.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ebx
sbb al, -114
lea rax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
