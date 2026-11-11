.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
adc rax, 519150753
mov cl, sil
add al, -32
cmovno dx, si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
or dl, bl
test dx, 28394
or di, 29
adc dil, -17
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 96
dec bl
test al, -85
adc al, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 22
adc bl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
