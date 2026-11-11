.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea dx, qword ptr [rsi + rdx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
or al, 19
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
mov dil, sil
xor bl, cl
cmp cl, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
