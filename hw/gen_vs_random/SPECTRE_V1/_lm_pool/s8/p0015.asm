.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], cx
cmp rbx, 81
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
or ax, -114
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, -114
mov al, dil
cmp ax, 7046
sbb sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
