.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc bx, 93
or eax, -1161451853
xor bl, sil
sub dl, bl
xchg al, cl
cmp sil, 25
add cl, -127
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
