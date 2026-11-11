.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
sub dil, sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sbb al, -112
sub bl, dil
xchg bl, dil
sub cl, sil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
movsx rax, dx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
