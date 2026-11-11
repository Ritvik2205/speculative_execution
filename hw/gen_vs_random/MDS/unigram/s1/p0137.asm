.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe ax, di
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and cl, -26 # instrumentation
cmovnp rbx, rcx
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
cmovnbe cx, bx
cmovbe dx, ax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 17
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 29
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 75
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
bts rax, 149
bt eax, eax
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and dil, 60
test rbx, 50
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 30
cmovns ax, bx
btr cx, 49
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
