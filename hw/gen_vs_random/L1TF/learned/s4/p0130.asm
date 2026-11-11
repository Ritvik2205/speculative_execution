.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
sbb sil, dil
lea eax, qword ptr [rsi + rsi + 88]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
lea rbx, qword ptr [rcx + rsi]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
sub al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
