.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor ax, 27703
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rax]
adc dil, 120
sbb al, cl
xor bl, al
bt edi, edx
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
