.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 51
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
or bx, 4
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and dl, -1 # instrumentation
cmovnb dx, si
bt rsi, rbx
jmp .bb_0.1
.bb_0.1:
xor sil, sil
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 1
bts di, 24
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 21
xor si, bx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
or di, -18
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 42
cmovs eax, eax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
cmovnp si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
