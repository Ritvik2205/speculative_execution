.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
xor sil, al
test al, dil
btc cx, bx
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
cmp bl, 123
lea rdi, qword ptr [rax]
sub rbx, 77
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
