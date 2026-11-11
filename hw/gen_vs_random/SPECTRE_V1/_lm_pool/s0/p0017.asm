.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
mov al, dil
xor al, dil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
or dil, 80
xchg bl, dil
test sil, 47
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
