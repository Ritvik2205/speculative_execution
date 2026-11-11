.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
cmp ecx, 40
sub dl, dil
or bl, dil
sub dl, al
mov dl, dil
xor cl, al
xor rcx, rdi
cmp sil, dl
movsx bx, sil
sub al, 96
and al, 100
or cl, al
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
test bl, 110
and sil, -84
adc sil, 88
sub rax, 714283065
xor ax, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
