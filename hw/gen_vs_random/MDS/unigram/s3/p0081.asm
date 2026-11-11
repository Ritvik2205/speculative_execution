.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
xor cl, dl
cmovnl si, di
bt bx, si
xor ax, -6793
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
bts rbx, 115
cmovnp rdx, rbx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
jmp .bb_0.1
.bb_0.1:
test cl, dil
and dl, al
or rbx, -77
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
cmovo ebx, edi
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
xor eax, 2063216578
cmovns si, cx
btc ax, 92
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
