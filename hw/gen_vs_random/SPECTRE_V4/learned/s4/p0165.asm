.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 7
or dil, cl
add al, 19
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
sub sil, -35
test al, -24
adc dl, dil
test al, 57
add cl, dl
adc dl, 87
dec dl
or cl, 83
or bl, dil
and ax, -12738
cmp dil, 101
movsx dx, cl
add al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
