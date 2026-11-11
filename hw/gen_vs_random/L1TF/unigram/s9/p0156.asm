.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rdi + rax]
cmovl rsi, rdx
cmovl rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
sub rbx, rcx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
bt rdi, 18
cmovl rcx, rbx
test cl, 14
cmovnbe edx, eax
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 89
and rdi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
