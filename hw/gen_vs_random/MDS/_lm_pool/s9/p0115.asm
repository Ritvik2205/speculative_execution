.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -59
and dl, cl
or cl, cl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor sil, -14
jmp .bb_0.1
.bb_0.1:
xor dl, 8
jmp .bb_0.2
.bb_0.2:
or al, dil
or al, -22
and al, 84
or rax, -141551502
xor ax, -12492
xor rax, -843636050
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
