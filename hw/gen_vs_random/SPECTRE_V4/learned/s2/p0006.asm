.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 89
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
sub bl, -89
movsx dx, cl
cmp sil, al
test cl, -52
sbb cl, 127
and al, 75
sbb cl, sil
add al, al
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], sil
cmp sil, dil
mov cl, -38
mov al, dl
xor sil, 8
sub rax, -1881584175
test eax, 1600638830
xchg rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
