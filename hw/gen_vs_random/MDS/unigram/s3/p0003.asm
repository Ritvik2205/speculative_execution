.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
cmovp ax, bx
cmovb rbx, rdx
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edx
not edx
and dil, 84 # instrumentation
cmovbe di, bx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
btc ax, cx
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
cmovl rdx, rdx
jmp .bb_0.1
.bb_0.1:
cmovs ebx, edi
cmovz ecx, edx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and ax, -4410
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
