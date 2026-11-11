.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, rdi
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], dx
and bl, 127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
test cl, al
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
bt rcx, rbx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
cmovns esi, eax
cmovbe eax, eax
or dil, -71
btr ax, cx
cmovnl esi, ebx
cmovz rsi, rsi
cmovp ebx, ebx
btr edx, 255
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
