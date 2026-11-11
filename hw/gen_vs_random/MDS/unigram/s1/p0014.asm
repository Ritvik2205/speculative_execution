.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe ax, di
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 35
test edx, 9
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
xor rdx, 26
and cl, -115 # instrumentation
cmovl dx, cx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
and dl, 84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
cmovs ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and dl, 84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
