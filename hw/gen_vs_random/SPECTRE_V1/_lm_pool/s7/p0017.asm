.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
add rax, 913062684
test al, -99
sbb ebx, 22
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc al, bl
sbb ecx, 96
or rax, -1571963467
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
