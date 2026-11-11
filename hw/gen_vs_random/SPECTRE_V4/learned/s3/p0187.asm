.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -10
sbb dl, 75
btc rax, rbx
test bl, 78
test sil, 68
test eax, -31785616
and al, 59
add al, dl
cmp cx, 0
sbb al, -14
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
or ax, 27604
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
