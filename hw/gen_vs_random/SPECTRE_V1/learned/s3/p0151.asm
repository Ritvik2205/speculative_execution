.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
mov dil, sil
test dl, bl
sub cl, dl
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdi + rdx + 69]
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
