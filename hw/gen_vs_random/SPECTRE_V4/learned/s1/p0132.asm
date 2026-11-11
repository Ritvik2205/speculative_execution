.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
test dil, -83
adc edx, -86
adc dl, dil
add cl, -9
test bl, dl
and cl, dil
adc al, dl
or al, cl
sbb eax, 426996540
sbb al, 43
or al, -83
movsx dx, sil
and di, bx
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 97
sub bx, 24
or al, bl
adc bl, cl
add al, -4
xor dl, cl
xor bl, sil
adc dil, 124
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
sbb di, -105
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
mov al, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
