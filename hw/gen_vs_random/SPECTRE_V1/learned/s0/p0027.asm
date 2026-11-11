.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx]
add dil, dil
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
sub dl, bl
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
cmp al, dil
sub al, cl
adc ecx, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
