.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 7
or bl, sil
and cx, dx
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
btc ax, 55
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
and bl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 23
jmp .bb_0.1
.bb_0.1:
and sil, dil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and bl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
cmovl rax, rsi
and bl, -30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and al, -105 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
btc di, 25
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
