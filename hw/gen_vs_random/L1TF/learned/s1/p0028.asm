.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
adc dl, -12
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
