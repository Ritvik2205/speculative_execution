.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx si, al
btr ax, 89
bswap rcx
and cl, -57
add cx, -103
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmovz rax, rdx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
xor edx, 58
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
cmp al, 23
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rsi]
add si, cx
neg rbx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
