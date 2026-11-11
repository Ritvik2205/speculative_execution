.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ebx, dl
inc rbx
or di, 0b1000000000000000 # instrumentation
bsf cx, di
test edi, 66
xor dil, cl
xchg rax, rdi
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btr esi, 37
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 30
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
test cx, cx
inc bl
cmovnp rsi, rdx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
