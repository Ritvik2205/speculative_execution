.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
sbb cl, al
mov cl, bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
adc cl, dl
adc cx, -30
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 97
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
