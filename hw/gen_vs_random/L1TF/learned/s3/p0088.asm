.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
cmp rbx, 39
and rax, 1163013815
or al, cl
jmp .bb_0.1
.bb_0.1:
add dil, al
sub al, 9
and cl, cl
cmp dl, -93
lea edi, qword ptr [rax]
adc al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
