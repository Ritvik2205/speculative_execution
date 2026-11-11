.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -49
test al, -24
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
test bl, -16
cmovno ax, di
sub cl, dl
adc dil, -48
adc dil, 38
or eax, -1213318393
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
