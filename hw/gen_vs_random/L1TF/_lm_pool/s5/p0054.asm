.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 32760
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 30
sbb eax, -403815802
test esi, 6
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and dl, dl
test rdx, rcx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rax + rbx]
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
