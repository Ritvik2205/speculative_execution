.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
sub cl, 92
cmp rdx, -49
or dil, -104
cmp dl, al
or al, -16
xor cx, -80
or al, dil
sub al, dl
or al, -90
or al, bl
cmp bl, sil
adc bl, dl
or ax, 57
and dil, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
