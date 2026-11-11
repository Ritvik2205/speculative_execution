.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 90
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
cmovbe eax, edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and si, ax
and rbx, 65
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
or rdi, 21
jmp .bb_0.1
.bb_0.1:
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
