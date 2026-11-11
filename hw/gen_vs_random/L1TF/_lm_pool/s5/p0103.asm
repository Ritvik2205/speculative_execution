.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
xor sil, 64
not sil
adc al, dl
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
