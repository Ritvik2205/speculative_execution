.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sbb al, -50
jmp .bb_0.1
.bb_0.1:
or edx, edi
add dl, 22
adc al, sil
xor dl, dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
sbb cl, -11
lea rcx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
