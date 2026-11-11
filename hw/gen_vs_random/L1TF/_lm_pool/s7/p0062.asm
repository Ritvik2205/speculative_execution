.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sbb sil, -19
sbb eax, -403815802
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rdx]
sbb dil, bl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sbb cl, -11
and edx, 76
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
