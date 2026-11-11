.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -35
cmp al, sil
and al, -118
add al, bl
sub cl, sil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
mov dil, sil
or rdx, 1
bts bx, 102
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
