.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and cl, -63
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
xor al, al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
cmovno dx, ax
or ax, 6575
or dil, -57
and dl, -73 # instrumentation
cmovns rbx, rcx
or ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
bt ax, dx
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
