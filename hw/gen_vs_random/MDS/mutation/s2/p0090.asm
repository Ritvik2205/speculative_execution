.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and cl, 8
jmp .bb_0.1
.bb_0.1:
or ecx, esi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
or ax, 28091
or dil, -57
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and dl, -73 # instrumentation
cmovns rbx, rcx
cmovno dx, ax
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
bt ax, dx
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
