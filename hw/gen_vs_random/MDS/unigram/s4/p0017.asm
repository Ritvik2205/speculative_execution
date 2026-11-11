.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 92
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and dl, 84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
xor cl, al
not ax
and ax, -30938
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
cmovnp rax, rsi
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 77
or cl, 10
and dl, 84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and dl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
cmovp edi, ecx
btc si, cx
bt rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
cmovz rcx, rax
or al, -8
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
