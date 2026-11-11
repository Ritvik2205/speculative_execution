.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -401020526
jmp .bb_0.1
.bb_0.1:
and edi, 42
add dil, -7
adc dl, -12
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and al, cl
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
lea dx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
xor eax, 965442135
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
