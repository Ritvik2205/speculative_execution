.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rdi, rsi
or rdi, rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
cmovl ecx, ecx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 3
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
cmovnz rcx, rsi
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 16
xor dil, 47
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
cmovno eax, edx
cmovnz ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
