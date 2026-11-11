.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test al, -85
or dil, -16
sub al, 55
mov bl, dl
adc dil, bl
xor bl, sil
and al, al
cmp eax, 89
inc eax
adc cl, 6
add al, -82
adc sil, dl
and dil, cl
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
