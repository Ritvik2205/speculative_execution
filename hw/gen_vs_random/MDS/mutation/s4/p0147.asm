.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
xor al, al
and cl, -63
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or ecx, esi
or dil, -52
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and dl, -73 # instrumentation
cmovns rbx, rcx
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
cmovno dx, ax
bt ax, dx
or ax, 28091
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
