.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
test bl, -8
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
test cl, dl
xor dl, 71
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
sub dil, cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
cmp dl, 119
test dil, -116
adc eax, -655457029
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
