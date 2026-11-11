.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb eax, ebx
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
sbb sil, bl
and bl, cl
sub sil, -18
xor al, -119
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
adc al, cl
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
lea dx, qword ptr [rax + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
