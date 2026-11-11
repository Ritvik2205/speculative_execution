.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
inc al
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
add bl, al
bt edi, ecx
add al, -1 # instrumentation
nop
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and cx, 127
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
sbb ax, -14164
add cl, 88
cmovnl rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
