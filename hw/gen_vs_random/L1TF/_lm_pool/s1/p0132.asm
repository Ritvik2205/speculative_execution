.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 28
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
or edx, 54
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
lea ax, qword ptr [rax + rdi]
jmp .bb_0.1
.bb_0.1:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and al, dl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
or edi, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
