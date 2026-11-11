.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
lea edx, qword ptr [rbx]
cmp rcx, 64
sbb dl, cl
lea dx, qword ptr [rcx]
lea dx, qword ptr [rbx]
lea ebx, qword ptr [rax]
lea di, qword ptr [rdx + rsi + 25]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
