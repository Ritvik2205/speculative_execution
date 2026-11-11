.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 56
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
not bl
sbb bx, 63
jmp .bb_0.1
.bb_0.1:
or sil, cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
xchg edi, esi
cmp ax, 7046
lea edx, qword ptr [rax + rax + 100]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
