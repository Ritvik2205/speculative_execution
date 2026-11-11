.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
cmp al, 56
sets dl
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and eax, edx
adc rax, 1431457700
sbb bx, dx
or bl, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
add bl, 48 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 18
and ax, 26813
xor al, dil
test sil, sil
cmovl rcx, rax
xor dx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
