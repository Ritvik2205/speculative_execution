.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
sub al, dl
bts eax, 232
cwde
sbb bl, dl
sbb dl, bl
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
