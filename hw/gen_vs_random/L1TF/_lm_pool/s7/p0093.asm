.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmp esi, 110
sub dil, -39
lea esi, qword ptr [rdi + rdi + 86]
lea rcx, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
test dil, -126
jmp .bb_0.2
.bb_0.2:
or dl, sil
adc al, bl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
