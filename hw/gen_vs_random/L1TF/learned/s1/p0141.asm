.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
adc cl, -34
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
or al, -48
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx + rbx + 22]
xor dl, al
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
