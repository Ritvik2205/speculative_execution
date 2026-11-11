.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
xor al, al
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and cl, 40
jmp .bb_0.1
.bb_0.1:
bt ax, dx
add dil, dl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 13
or dil, -57
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
cmovno dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
