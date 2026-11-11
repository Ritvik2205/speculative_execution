.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
xor sil, sil
test dil, -116
sbb rbx, 26
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
lea cx, qword ptr [rdx]
lea esi, qword ptr [rax]
adc dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
