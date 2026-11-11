.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dil, cl
sub al, bl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
xor ebx, 79
setz sil
neg dl
test dil, -116
xor cl, dl
lea rsi, qword ptr [rcx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
