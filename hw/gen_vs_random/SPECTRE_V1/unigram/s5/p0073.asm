.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
cmp ax, di
cmovl edx, edi
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
cmovz rdx, rdi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sbb esi, 81
sbb cl, 105
mul rcx
sbb bl, 79
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
add dl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
imul rdx
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
lea rsi, qword ptr [rdx + rcx + 57579]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
