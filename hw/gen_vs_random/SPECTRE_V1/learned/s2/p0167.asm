.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, di
mov bx, 89
add ax, 6980
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -47
adc sil, dl
and dil, cl
sub dl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sbb bl, cl
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
