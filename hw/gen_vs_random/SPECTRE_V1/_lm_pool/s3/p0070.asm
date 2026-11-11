.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
sub al, dil
sbb eax, 125
lea ax, qword ptr [rax]
cmp bl, dl
test dl, -105
add bl, dil
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
lea cx, qword ptr [rsi]
add bl, cl
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
lea rax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
