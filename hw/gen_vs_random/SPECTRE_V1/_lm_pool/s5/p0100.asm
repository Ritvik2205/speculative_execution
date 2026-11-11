.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
add bl, -95
xchg rdx, rax
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
add dl, 47
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
