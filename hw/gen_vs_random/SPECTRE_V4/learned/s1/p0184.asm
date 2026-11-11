.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
add al, -82
bts ax, 155
sbb al, 66
and al, 49
sub al, -128
cmp cl, -80
inc eax
mov bl, al
cmp al, 75
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
sub dl, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
