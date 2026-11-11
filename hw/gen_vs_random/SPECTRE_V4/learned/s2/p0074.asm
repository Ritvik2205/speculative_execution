.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, edx
sub bl, cl
or dl, 71
movsx dx, bl
sub si, -92
sub dl, 107
dec al
or cl, cl
mov cl, al
xor dil, cl
test bl, -91
and dl, -11
adc sil, dil
test di, -19523
sbb cl, 12
test cl, -10
cmovno esi, ebx
add dl, sil
add bl, -38
bts ax, 155
sub edi, 74
dec al
test ebx, 83
not cl
jmp .bb_0.1
.bb_0.1:
and dil, dl
or cl, -55
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
