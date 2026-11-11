.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdx + rbx + 77]
test cl, 36
and cl, bl
test cl, 75
jmp .bb_0.1
.bb_0.1:
or al, -57
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
adc al, -6
adc dl, dil
test al, -56
jmp .bb_0.2
.bb_0.2:
sbb dl, -26
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
