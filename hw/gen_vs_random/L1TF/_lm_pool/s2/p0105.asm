.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
jmp .bb_0.1
.bb_0.1:
xor ax, 30996
jmp .bb_0.2
.bb_0.2:
test sil, 29
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and di, 63
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and dil, -82
test ax, 13879
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
