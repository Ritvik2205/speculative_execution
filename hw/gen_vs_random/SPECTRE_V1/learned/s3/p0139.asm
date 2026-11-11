.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
sbb ebx, 25
adc dil, 35
test dl, 113
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
add al, -47
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
sbb cl, dil
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
