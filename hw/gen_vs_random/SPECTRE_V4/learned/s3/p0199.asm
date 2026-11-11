.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
adc bl, 127
test sil, dil
test edi, -2098143765
dec al
mov dl, dil
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
sub cl, dil
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
mov dl, cl
mov bl, cl
add al, -127
cmp sil, cl
sub al, 54
add dil, -84
adc sil, 111
and dx, -107
adc al, -86
adc bl, -20
bt rdi, rax
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
sbb cx, -114
add sil, al
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
