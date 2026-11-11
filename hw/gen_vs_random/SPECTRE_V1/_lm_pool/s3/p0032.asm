.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
cmp sil, al
sub dl, -12
cmp dl, dil
lea eax, qword ptr [rdx]
add di, 44
lea rcx, qword ptr [rax]
test dil, -116
sub dil, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
