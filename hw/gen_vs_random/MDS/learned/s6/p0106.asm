.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -12492
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
xor al, -19
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
btr si, di
test dl, 27
or bl, -54
test rsi, 60
not al
and ax, 19740
or cl, -77
and sil, 89
or al, cl
or dl, -8
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
