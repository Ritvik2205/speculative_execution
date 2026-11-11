.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
add sil, -61
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
sub dil, 87
test cl, 59
btc dx, 86
cmovns ebx, edx
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
adc dl, -12
or bl, dil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 25
add dil, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
