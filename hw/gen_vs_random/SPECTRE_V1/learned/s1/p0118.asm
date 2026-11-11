.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ebx, esi
xor dil, -37
inc rdx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, 113
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, cl
sbb ecx, 4
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
adc bl, -73
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
