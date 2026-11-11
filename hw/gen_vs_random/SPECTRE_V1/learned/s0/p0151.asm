.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
lea rax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -66
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
bt ax, 72
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
sub cl, -47
or sil, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
