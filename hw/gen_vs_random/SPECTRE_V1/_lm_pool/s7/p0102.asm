.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -13
xchg esi, edi
xor sil, dil
test al, 34
lea rcx, qword ptr [rax + rdi + 66]
sbb al, -114
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, -82
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
