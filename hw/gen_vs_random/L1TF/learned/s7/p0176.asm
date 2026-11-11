.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
lea esi, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test dl, 84
and sil, 93
adc cl, bl
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
add dil, 88
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
