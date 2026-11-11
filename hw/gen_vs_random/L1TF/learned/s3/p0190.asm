.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
sub al, 9
movsx edx, sil
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx]
or al, -48
sbb al, sil
add al, -102
adc cl, -34
jmp .bb_0.2
.bb_0.2:
and al, -68
dec cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
