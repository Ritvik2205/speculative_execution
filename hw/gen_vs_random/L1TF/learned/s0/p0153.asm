.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, dx
adc cl, -34
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
jmp .bb_0.2
.bb_0.2:
cmovno rsi, rcx
add dl, cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
or bl, -5
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
