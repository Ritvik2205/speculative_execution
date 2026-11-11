.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -66
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
sub al, dil
lea rax, qword ptr [rdi + rsi + 53]
or cl, bl
or bl, dil
and rsi, 82
and rax, -1128038253
xchg al, dl
adc sil, dl
or dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
