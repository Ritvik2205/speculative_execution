.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and cl, 86
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
adc bl, -73
sbb dil, -106
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
xor dil, dil
sbb cl, al
test cl, -24
setz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
