.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -19
btr rbx, 193
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
cmovz dx, ax
and dl, -19 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
cmovns esi, ebx
xor cx, -18
and cx, -2
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
cmovle edi, ebx
and dil, -13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and al, -40 # instrumentation
cmovle dx, ax
and bl, bl
btc ax, si
or cl, sil
and rax, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
