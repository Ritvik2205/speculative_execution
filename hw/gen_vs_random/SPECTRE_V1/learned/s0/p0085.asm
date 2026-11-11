.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, cl
and al, sil
mov bl, dl
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
test al, -99
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
