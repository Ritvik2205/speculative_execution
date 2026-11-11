.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
btr edx, eax
cmovz eax, ecx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
cmovs di, di
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
xor dil, dil
and rdx, rbx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
xor cx, -18
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
bt rax, 58
cmovle rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
