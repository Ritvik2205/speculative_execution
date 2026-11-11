.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
adc cl, -19
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
