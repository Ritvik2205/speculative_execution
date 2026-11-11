.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
sbb al, dl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 70
adc bl, -73
js .bb_0.1
jmp .exit_0
.bb_0.1:
xchg sil, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and cl, 86
lea di, qword ptr [rbx]
cmovbe edx, eax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
adc bl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
