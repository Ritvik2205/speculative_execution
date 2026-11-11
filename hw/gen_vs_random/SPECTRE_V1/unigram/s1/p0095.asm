.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rax + rbx]
test bl, dil
mov bl, bl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
adc bl, dl
add bl, 40 # instrumentation
lea bx, qword ptr [rdx + rdx]
or cl, dl
and sil, dl
add bl, -94 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 98
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
