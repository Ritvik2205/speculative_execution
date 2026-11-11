.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea ecx, qword ptr [rax + rdi + 97]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
movzx edx, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc sil, -77
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
js .bb_0.2
jmp .exit_0
.bb_0.2:
dec al
sub ebx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
