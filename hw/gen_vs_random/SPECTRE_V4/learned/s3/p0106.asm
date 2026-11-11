.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and al, dil
test esi, -222751961
test dil, al
xor al, -15
test edx, 1479885278
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
or rbx, -107
test bl, dil
and cl, bl
cmp cl, 49
test al, dl
cmp al, -1
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
test bl, dl
or cl, -104
xchg dil, al
sbb cl, al
sub ax, 6579
adc edx, -125
and eax, -2001076187
inc eax
test al, -38
sbb sil, 24
mov al, dl
xor al, -82
cmp dil, sil
adc dl, sil
mov cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
