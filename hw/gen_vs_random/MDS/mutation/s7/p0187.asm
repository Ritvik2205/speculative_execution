.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
cmovnbe rdx, rdi
xor dil, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
bt rax, rax
cmovnz rax, rdi
not dl
cmovns di, cx
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
xor al, 9
bts eax, 222
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and dl, 84 # instrumentation
cmovl rax, rdi
xor ax, -12492
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
xor cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
