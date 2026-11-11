.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
cmp edx, 44
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -126
xchg bl, sil
cmp cl, 23
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
sbb dil, bl
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
lea rdx, qword ptr [rax + rcx + 48576]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
