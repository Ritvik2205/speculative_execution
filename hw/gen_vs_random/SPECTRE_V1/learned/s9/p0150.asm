.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
mov cl, al
jmp .bb_0.1
.bb_0.1:
sub bl, al
cmp edx, 44
adc dil, 95
adc al, cl
sub rax, -1628299544
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
