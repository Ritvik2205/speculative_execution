.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
xor al, 34
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
bt rax, rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
cmovns di, cx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
not dl
cmovnbe rdx, rdi
bts eax, 222
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
xor dil, cl
xor ax, -4010
cmovnz rax, rdi
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and dl, 84 # instrumentation
cmovl rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
