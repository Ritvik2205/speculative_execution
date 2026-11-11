.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 39
or bl, -86
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
add dil, cl
adc sil, 111
mov bx, 27738
or ecx, 17
cmp esi, 123
add al, -112
sub al, dl
sub dil, -28
mov dil, 98
or cl, bl
cmp sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
