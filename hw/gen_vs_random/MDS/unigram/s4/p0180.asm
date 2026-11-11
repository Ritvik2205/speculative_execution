.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
bts edx, esi
and al, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
cmovnbe ax, cx
and si, dx
cmovnle eax, ebx
or bl, 84
cmovns cx, dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
bts dx, cx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor al, al
jmp .bb_0.1
.bb_0.1:
and dil, -78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
bt rax, 51
and al, dil
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
bt rax, 39
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
