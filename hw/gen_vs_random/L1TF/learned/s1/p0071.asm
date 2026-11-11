.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
xor al, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 124
jmp .bb_0.2
.bb_0.2:
or cl, dl
jmp .bb_0.3
.bb_0.3:
adc sil, dl
sub sil, al
cmovbe edx, ebx
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
test dil, -126
sub dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
