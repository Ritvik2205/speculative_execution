.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
bt edi, ecx
cmovnl rbx, rsi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
add cl, -36
sbb ax, -9869
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
add al, -1 # instrumentation
nop
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
inc al
add bl, al
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and cx, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
