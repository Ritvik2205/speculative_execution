.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
adc dil, 93
lea rbx, qword ptr [rdx + rax + 23]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor ecx, 44
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
sbb al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
