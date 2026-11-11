.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1161451853
xor sil, dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 18
lea di, qword ptr [rcx + rsi + 99]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
lea ebx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
