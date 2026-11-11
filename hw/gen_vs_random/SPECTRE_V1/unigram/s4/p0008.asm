.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx + rdi]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 19
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 43
cmp cl, 87
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 54
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc cx, cx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -12
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 26
sbb dil, -93
movzx ebx, sil
mul al
sbb cl, 105
lea bx, qword ptr [rax + rbx + 15]
or edx, 83
or edx, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
