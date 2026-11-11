.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -127
cmp eax, 692647572
sbb ebx, 29
test dil, -116
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 18
and rax, 1713273566
lea ax, qword ptr [rbx + rcx]
adc sil, -77
sub rcx, 13
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
