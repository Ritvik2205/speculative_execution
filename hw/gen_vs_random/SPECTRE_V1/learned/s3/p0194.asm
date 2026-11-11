.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
adc bl, 88
cmp rcx, 60
jmp .bb_0.1
.bb_0.1:
or al, 100
lea edx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
sbb dil, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
cmp di, 84
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 29
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
