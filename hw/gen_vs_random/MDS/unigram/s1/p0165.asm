.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl esi, edi
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 53
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and al, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 53
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
cmovnz cx, cx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 69
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
