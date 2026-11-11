.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
cmp cx, 56
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add al, -46
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
