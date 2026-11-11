.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
mov edx, -377652802
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
btc si, dx
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
sbb al, 61
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
adc al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
