.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 87
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
cmovle edi, eax
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
and dl, 84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 67
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
cmovo rax, rdi
and cl, al
test esi, 16
or rdx, 88
bt edx, 69
and dil, 11
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
