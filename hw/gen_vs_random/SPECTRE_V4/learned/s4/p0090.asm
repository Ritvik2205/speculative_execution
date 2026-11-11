.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or cl, dil
and dil, -23
sub sil, 71
add dil, bl
test dil, -26
adc ax, 25365
or al, -50
cmovno di, si
mov bl, cl
add al, cl
mov dx, 11552
add edx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
