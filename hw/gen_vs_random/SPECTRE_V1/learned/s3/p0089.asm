.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
mov dl, al
and ax, 21910
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
or dil, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, al
xor sil, -33
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
