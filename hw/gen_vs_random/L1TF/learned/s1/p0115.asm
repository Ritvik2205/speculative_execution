.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
setp sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor cl, 75
jmp .bb_0.1
.bb_0.1:
xor cl, 21
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
xor cl, 75
xor cl, sil
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rdi + rdi]
add dil, 85
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
sbb rax, 717206440
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
