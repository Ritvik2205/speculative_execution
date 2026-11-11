.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -54
test dl, cl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
and al, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
or rdx, -48
jmp .bb_0.1
.bb_0.1:
test dil, 46
test al, -7
xor cl, al
xor ax, -12492
btc esi, 199
and cl, cl
test al, dil
or dil, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
