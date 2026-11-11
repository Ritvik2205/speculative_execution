.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 287965578
cmp rdx, 46
lea ax, qword ptr [rdx]
and al, -68
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
adc dil, 120
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
