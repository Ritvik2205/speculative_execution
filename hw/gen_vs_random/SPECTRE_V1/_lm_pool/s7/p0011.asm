.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, sil
setz bl
or cl, -62
sub bl, -6
xor bl, -38
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
lea bx, qword ptr [rcx + rax + 63]
lea rax, qword ptr [rcx + rbx + 93]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rbx, 6
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
