.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and cl, cl
cmp rsi, 78
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
sbb al, -23
cmp cl, -89
jmp .bb_0.1
.bb_0.1:
sbb dl, -26
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 84
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
