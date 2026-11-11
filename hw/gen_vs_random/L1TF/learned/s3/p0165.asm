.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
xor al, 89
and cl, 2
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add dil, -5 # instrumentation
adc cl, dil
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
or bl, cl
or rax, 1808026647
and al, -68
cmovnbe rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
