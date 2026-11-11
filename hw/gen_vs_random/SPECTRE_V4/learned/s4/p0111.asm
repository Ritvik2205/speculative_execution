.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -99
sub dl, -16
and dil, 8
xor si, -73
or al, -50
sbb al, -3
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
sbb al, -52
sbb sil, -124
cmp dil, cl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 22
jmp .bb_0.1
.bb_0.1:
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
