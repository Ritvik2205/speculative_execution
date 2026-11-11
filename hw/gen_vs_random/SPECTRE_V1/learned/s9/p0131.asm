.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
test bl, -8
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
sbb dil, -93
xor bl, cl
test sil, 47
and dl, -111
cmp cl, 89
btc ax, di
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
