.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rax, 2134929425
cmp al, dil
adc cl, -81
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
sbb eax, -417098439
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
