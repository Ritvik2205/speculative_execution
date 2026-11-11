.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rsi, rbx
cmovnp dx, di
btc ax, cx
and cl, dl
cmovl si, bx
xor rdx, -59
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
or si, ax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
btc rcx, rbx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor rax, -404206377
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
btc rdx, rdx
and cx, dx
and al, -53 # instrumentation
cmovbe esi, eax
xor al, 55
btr rax, 56
test bl, -114
cmovp eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
