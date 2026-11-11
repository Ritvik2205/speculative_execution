.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and dil, -82
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
xor bl, dil
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
xor ax, 34
adc bl, -14
cmp dil, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
