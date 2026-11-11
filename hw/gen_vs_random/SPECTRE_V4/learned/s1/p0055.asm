.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
or edx, 0
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
mov bl, dl
mov bl, cl
cmp al, sil
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and ax, 4
or cl, cl
add dil, al
test dl, -125
sub sil, -35
cmp bl, al
xor bl, dl
sbb al, -39
or cl, cl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
mov cl, sil
xor al, 48
xor dl, -123
and sil, -84
mov sil, bl
cmp sil, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
