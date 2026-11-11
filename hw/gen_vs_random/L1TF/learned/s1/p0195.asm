.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
xor cl, dil
jmp .bb_0.1
.bb_0.1:
add al, -102
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rbx]
xor cl, 89
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea dx, qword ptr [rdi + rdx + 83]
cmp sil, -11
sub ax, -27107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
