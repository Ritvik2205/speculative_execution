.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -52
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and dx, 85
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
cmovnz edx, ecx
cmovnbe eax, ebx
test dl, bl
xor ebx, ebx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 36
and cl, dl
cmovnp rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
xor dl, cl
cmovp ax, cx
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
cmovnb ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
