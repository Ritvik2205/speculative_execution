.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
or ax, 11821
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
xchg edi, edx
or dil, -113
and cl, 40
sub dl, 41
jmp .bb_0.2
.bb_0.2:
and esi, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
