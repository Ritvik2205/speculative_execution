.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb dx, si
and cl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
cmovp rdx, rcx
or cl, dil
btr rbx, 96
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
bt ebx, 107
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
cmovz rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
jmp .bb_0.1
.bb_0.1:
bt dx, bx
and rdx, 76
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
bts eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
cmovl edx, edx
or rax, -2043376621
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
