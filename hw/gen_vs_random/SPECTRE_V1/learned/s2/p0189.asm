.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 79
xor sil, -33
sbb dil, al
xor al, -42
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
inc eax
adc dil, 8
adc ebx, 6
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
