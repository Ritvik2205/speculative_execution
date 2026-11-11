.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
xor al, 38
or al, -57
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
adc cl, bl
and al, -68
test dil, dl
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rcx + rbx + 23]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
