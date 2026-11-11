.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, 99
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
sub al, -3
mov ax, dx
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
add cl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and cx, 127
cmovnl rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
