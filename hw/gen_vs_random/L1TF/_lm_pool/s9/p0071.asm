.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
inc sil
and al, -68
and ax, 26813
jmp .bb_0.1
.bb_0.1:
test dl, 84
btc si, dx
sub di, 19
not bl
cmp dil, 42
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
