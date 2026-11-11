.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
sbb sil, 19
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
or al, dil
test bl, al
and dl, -86
sbb al, -14
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
movzx bx, cl
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
adc al, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
