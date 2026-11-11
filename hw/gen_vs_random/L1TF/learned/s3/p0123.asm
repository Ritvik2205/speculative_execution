.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, ax
sbb sil, -79
xor sil, 64
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx], 59
setb al
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
adc al, 80
add cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
