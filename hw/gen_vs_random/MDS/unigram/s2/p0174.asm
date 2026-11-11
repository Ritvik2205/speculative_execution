.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
cmovb eax, ebx
btc edx, 7
and cl, 122 # instrumentation
cmovl esi, esi
test esi, 1857129931
test dl, al
and dil, -103 # instrumentation
cmovns edi, edi
btr dx, 47
jmp .bb_0.1
.bb_0.1:
and bl, dil
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
btr ax, 193
bt bx, 253
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 12
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
test bl, 65
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
