.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
test bl, 84
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rcx + rdx + 26]
lea ecx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
