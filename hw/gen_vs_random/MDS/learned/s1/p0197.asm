.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
test rdi, 66
btr rax, 29
not cl
or sil, -78
or al, cl
and cl, -19
jmp .bb_0.1
.bb_0.1:
and al, 82
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
xor ax, -6793
and bl, 68
xor al, 115
and cl, -19
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
