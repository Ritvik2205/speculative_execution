.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
test dil, -116
and cl, sil
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
adc sil, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
