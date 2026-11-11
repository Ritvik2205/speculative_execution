.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ebx
adc cl, dil
xor eax, -1721938664
sbb dil, -106
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rdi]
lea rbx, qword ptr [rdx + rsi + 34562]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
