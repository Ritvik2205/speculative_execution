.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 42
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
xor cl, 89
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
cmp al, 56
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 51
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
