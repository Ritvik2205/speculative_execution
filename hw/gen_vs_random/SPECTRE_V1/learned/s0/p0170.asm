.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
sbb bl, -41
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, -8
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 63
cmovno ax, di
adc sil, -77
sub si, 32
jp .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, dl
cmp al, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
