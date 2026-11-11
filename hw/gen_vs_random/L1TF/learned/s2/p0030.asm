.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and cl, 32 # instrumentation
cmovnbe ecx, edx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
jmp .bb_0.3
.bb_0.3:
cbw
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
xor bl, 38
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
sbb al, bl
lea rsi, qword ptr [rcx + rbx + 48]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
