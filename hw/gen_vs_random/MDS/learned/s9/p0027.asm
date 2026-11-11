.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
not bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
xor al, -19
test rcx, -613256812
and al, dl
btr ax, si
and al, sil
and rax, 452940266
xor al, -26
test ebx, -961564216
jmp .bb_0.1
.bb_0.1:
xor ax, -1005
xor cl, 24
and edi, 23
jmp .bb_0.2
.bb_0.2:
test sil, 41
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
