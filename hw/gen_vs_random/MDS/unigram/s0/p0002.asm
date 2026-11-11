.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
and dl, 21 # instrumentation
cmovb di, dx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
xor edx, 94
and rcx, rdi
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 71
jmp .bb_0.1
.bb_0.1:
cmovnle ebx, eax
cmovnbe edx, eax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 85
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and dl, -73
cmovnbe rcx, rbx
cmovz eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
