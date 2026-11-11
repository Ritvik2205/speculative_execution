.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb al, 66
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub al, bl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
lea rax, qword ptr [rdx]
lea rax, qword ptr [rdx + rbx + 29]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
