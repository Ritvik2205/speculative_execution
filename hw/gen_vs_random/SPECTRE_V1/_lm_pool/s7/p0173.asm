.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -75
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
cmp rsi, 53
or al, cl
sub bl, dl
add cl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -13
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
