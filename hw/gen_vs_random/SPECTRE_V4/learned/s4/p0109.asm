.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 88
and sil, bl
test al, 18
test dl, 114
or sil, dil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 63
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
or dl, dil
xor cl, -15
sub dil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
