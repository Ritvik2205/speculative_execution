.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -36
mov dil, cl
add dil, 72
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 10
bt edx, ecx
adc cl, -81
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
lea di, qword ptr [rbx + rdi + 84]
lea edx, qword ptr [rax]
or bx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
