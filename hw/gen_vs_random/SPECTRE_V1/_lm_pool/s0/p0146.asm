.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 32
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
lea bx, qword ptr [rdi]
sub al, 63
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, dil
test al, -99
adc dil, 92
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
