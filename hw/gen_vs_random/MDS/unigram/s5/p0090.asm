.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdi, 88
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edi
test cl, -86
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and dil, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
or bl, -62
cmovns bx, di
cmovno bx, ax
btr bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
cmovb ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
