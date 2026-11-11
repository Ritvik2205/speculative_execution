.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
sub dil, -32
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
test sil, 13
sbb al, sil
xchg bl, bl
sub al, dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
add sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
