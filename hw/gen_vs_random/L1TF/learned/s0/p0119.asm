.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 60
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
adc dl, al
jmp .bb_0.2
.bb_0.2:
xor dl, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 64
sbb dl, bl
sub sil, bl
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
sbb al, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
