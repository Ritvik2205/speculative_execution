.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdi, 72
sbb dl, cl
and cx, 63
mov bl, sil
sbb rax, 342397759
sbb dl, 127
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
mov dl, dil
or si, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
