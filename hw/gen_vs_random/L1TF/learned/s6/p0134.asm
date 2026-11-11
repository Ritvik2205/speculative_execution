.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
xor al, dil
and dx, 38
bts ecx, 225
bts eax, 232
dec esi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
xor cx, 113
lea eax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
