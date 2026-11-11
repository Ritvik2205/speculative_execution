.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
xor cl, bl
mov cl, dl
add cl, sil
sub dl, 107
mov dil, sil
jmp .bb_0.1
.bb_0.1:
xchg esi, edx
dec al
add al, dl
dec cl
mov dl, bl
and al, 92
sbb bl, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
