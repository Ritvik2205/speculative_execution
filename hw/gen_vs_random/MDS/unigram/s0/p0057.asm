.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rax, rbx
cmovbe eax, edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and si, ax
and rbx, 65
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or rdi, 21
and dil, 46 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
cmovz edx, edx
btr rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
btr bx, cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
cmovnle eax, edi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
or rsi, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
