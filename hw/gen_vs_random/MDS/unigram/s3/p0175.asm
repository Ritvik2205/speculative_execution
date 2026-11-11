.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 60
xor si, ax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and cl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
or rbx, -124
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 24
cmovnl si, ax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 86
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
bts rsi, 89
xor bl, sil
bt edx, 75
xor sil, bl
cmovb cx, ax
and dl, 84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and al, -105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
