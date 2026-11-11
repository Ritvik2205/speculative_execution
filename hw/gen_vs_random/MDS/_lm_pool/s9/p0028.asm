.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
xor ax, -16696
xor cl, 55
and eax, 33
and bl, 68
xor sil, 94
and si, -121
xor rbx, 89
and ax, 29207
and dl, -73
test al, 22
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
