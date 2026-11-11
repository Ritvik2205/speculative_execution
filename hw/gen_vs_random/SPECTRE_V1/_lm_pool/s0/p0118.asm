.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 89
xor al, -119
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rcx]
lea rsi, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
xor al, dl
cmp ax, -11439
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
