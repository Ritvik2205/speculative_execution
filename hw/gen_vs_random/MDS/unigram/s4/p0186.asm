.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and dl, 107 # instrumentation
cmovs ebx, edx
cmovo rsi, rcx
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
or dl, -115
cmovnbe cx, dx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and bl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
cmovno eax, esi
cmovo dx, di
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
jmp .bb_0.1
.bb_0.1:
bt eax, 51
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and cl, 95 # instrumentation
cmovns rcx, rcx
and bl, -55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 58
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 63
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
