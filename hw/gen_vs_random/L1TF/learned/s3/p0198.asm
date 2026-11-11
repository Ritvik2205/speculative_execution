.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, eax
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and al, al
or dil, cl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
inc eax
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
lea rsi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
