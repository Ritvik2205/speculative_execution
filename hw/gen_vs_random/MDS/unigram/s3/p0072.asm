.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
bt edi, esi
xor dl, -19
test ax, 4430
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
cmovz ax, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edx
cmovnbe esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
and cl, -127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
