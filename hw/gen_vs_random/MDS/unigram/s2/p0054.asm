.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
or rdi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
btc rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
bt dx, 39
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
bts bx, cx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 57
bts rax, 117
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
cmovnz bx, ax
cmovbe ax, ax
xor dl, -68
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
test cl, 11
xor cl, al
xor rax, rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
