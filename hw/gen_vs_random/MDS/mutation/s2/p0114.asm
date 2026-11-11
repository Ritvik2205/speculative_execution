.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rax, rdi
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
cmovnbe rdx, rdi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
not dl
xor dil, cl
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and dl, 84 # instrumentation
cmovl rax, rdi
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
cmovns di, cx
xor cl, 24
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
bts eax, 222
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor ax, -12492
bt rax, rax
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
