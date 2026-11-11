.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
cmp dl, 23
or dil, dil
test dl, -102
and dl, dil
test al, 115
sbb sil, -124
movsx dx, bl
and dil, -61
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
cmp dl, sil
add dl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and dil, -61
sub dl, sil
or bl, sil
add cl, -62
xor ax, 45
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
