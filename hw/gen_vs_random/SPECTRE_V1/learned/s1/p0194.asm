.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
setnle sil
cmp rax, 900122030
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
setno bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rsi]
sub bx, 78
mov bl, dil
xor cl, al
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
