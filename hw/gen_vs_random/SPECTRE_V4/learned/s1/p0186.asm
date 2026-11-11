.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ecx
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
cmp cl, 100
add dl, -8
adc dil, cl
and al, 82
sbb bl, dil
mov dl, dl
test sil, bl
adc dil, cl
imul rdx, rcx, 13
sub dil, 65
add dl, cl
test sil, 68
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
