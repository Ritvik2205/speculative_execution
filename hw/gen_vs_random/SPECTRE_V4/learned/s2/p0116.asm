.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, 71
mov cl, dil
xchg al, dil
add dl, bl
xor al, -84
adc bl, dl
cmp bl, cl
dec cl
mov al, sil
sub dil, -11
xor al, -82
mov bl, al
and dl, -104
add cl, cl
xor cx, -80
xor bl, al
sub dil, -11
sub dil, 65
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
add bl, al
sbb dl, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
