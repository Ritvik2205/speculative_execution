.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -71
sbb dl, bl
test sil, 47
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 92
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
cmovno di, cx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
sub dl, cl
test dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
