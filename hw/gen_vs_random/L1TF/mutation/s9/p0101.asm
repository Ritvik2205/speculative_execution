.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
inc al
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and cx, 127
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
cmovnl rbx, rsi
add cl, 88
add al, -1 # instrumentation
nop
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
bt edi, ecx
add bl, al
sbb ax, -4845
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
