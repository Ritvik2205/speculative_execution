.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
xor rdx, -59
bts edi, 248
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and dl, 53 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
or cl, 7
and di, 91
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and bl, 68
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
xor rax, 459999114
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
bts rax, 77
xor al, bl
cmovns ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
