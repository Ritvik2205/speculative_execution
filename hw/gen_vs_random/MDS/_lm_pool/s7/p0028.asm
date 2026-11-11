.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -85
and bx, 94
xor al, -19
and dl, sil
jmp .bb_0.1
.bb_0.1:
xor al, 8
and dl, -73
or cl, cl
and dl, sil
or al, bl
and dl, sil
bt di, ax
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test rax, -2052112368
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
