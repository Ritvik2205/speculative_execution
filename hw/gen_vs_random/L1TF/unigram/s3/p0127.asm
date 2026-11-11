.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg di, ax
lea rcx, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
cmovz rbx, rcx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
mov edx, 54
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
cmovb cx, bx
imul rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
or rax, -82
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
sub al, sil
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
