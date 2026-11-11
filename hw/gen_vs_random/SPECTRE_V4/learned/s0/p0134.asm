.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 57
and al, 82
or cl, -104
or dil, al
or dil, 5
test bl, -91
sub dil, al
xor bl, dil
sub dl, dil
cmp di, -8
mov cl, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
mov dil, 55
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
