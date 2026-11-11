.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
xor ax, -16696
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
xor al, -4
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
cmovnbe rdx, rdi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
not dl
cmovnz rax, rdi
xor dil, cl
bt rax, rax
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
bts eax, 222
cmovns di, cx
and dl, 84 # instrumentation
cmovl rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
