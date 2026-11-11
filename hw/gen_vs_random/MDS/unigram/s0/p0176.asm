.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
bts ax, 22
bt cx, si
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
btc rcx, 81
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 58
bt cx, 22
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and cl, -58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
cmovnle ebx, edi
xor rdi, -9
or rbx, rsi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
