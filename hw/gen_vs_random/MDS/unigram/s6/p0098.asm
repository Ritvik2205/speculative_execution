.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz bx, cx
cmovnp bx, di
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
cmovp dx, si
btr rbx, 193
and bl, -99 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and cl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
xor cl, sil
or al, -58
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
and di, 99
jmp .bb_0.1
.bb_0.1:
test rsi, 82
btr rdx, 14
and al, 14
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rax], ax
xor dl, sil
xor dil, -3
cmovo edx, eax
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
