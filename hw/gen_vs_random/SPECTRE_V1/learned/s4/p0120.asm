.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and dil, 98
sbb al, sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub cx, 41
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
sbb ecx, 2
adc bl, -76
cmp ebx, -33
lea rax, qword ptr [rbx]
lea cx, qword ptr [rdi + rdx + 11]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
