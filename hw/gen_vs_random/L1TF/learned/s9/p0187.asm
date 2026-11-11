.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
lea rcx, qword ptr [rax + rsi + 17]
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
cmp al, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
test dl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
