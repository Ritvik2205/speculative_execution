.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
sub cl, sil
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
or al, -2
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
or al, -57
jmp .bb_0.1
.bb_0.1:
adc ecx, 86
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
sbb cl, -11
or rcx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
