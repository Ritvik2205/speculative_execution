.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
sub al, dl
jmp .bb_0.1
.bb_0.1:
add dl, -5 # instrumentation
adc al, dl
jmp .bb_0.2
.bb_0.2:
sbb al, bl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
