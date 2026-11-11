.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
test sil, -55
test sil, 41
jmp .bb_0.1
.bb_0.1:
xor cx, -18
or rax, -141551502
or ax, -11837
xor cl, 24
xor cl, sil
jmp .bb_0.2
.bb_0.2:
or cl, 6
and si, -121
or al, bl
not sil
and bl, bl
test rcx, -613256812
xor cx, -18
and ax, 31082
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
