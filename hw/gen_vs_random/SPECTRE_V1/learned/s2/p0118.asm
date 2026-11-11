.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 25351
add al, -13
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
mov sil, bl
sbb eax, -417098439
bts si, 40
and bl, cl
sbb al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
