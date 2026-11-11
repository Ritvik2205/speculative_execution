.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
or sil, -8
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
test cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and al, -56 # instrumentation
cmovl rdi, rcx
or dl, 22
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 42
not dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and cx, 73
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
and dl, -7
xor al, cl
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 74
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
xor eax, 1170472196
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
