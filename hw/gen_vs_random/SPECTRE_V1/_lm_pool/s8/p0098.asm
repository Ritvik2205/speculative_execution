.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rdi + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
cmovnbe rax, rbx
adc dil, 91
adc dil, 28
lea ax, qword ptr [rcx + rdx + 53]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
