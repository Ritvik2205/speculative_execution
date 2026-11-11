.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
xor cl, al
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or bl, 114
jmp .bb_0.1
.bb_0.1:
cmp ax, 24210
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 8
or ax, 11821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
