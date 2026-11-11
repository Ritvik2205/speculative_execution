.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmp rcx, 61
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
add cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
inc bl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
