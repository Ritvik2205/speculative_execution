.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
or si, 94
or sil, bl
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
or sil, -78
or rax, -689609688
xor ax, 23633
and dl, -73
test dl, 48
jmp .bb_0.1
.bb_0.1:
test dil, cl
xor cl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
