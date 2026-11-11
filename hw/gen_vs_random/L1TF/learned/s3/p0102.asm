.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
xchg rdi, rbx
sub dil, dl
xor cl, dl
adc sil, 21
jmp .bb_0.1
.bb_0.1:
test al, -32
bts edx, 59
or rdx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
