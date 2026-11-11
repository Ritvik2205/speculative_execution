.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test sil, -31
adc cl, -19
btc eax, 84
adc dil, 65
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi], -31
test rbx, 97
test cl, -33
mov sil, dl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
add dil, dil
sub cl, dil
lea rdx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
