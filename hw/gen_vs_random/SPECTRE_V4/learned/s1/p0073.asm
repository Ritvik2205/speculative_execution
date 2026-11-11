.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 85
cmovnp bx, cx
test dil, -26
cmp eax, -2073187604
sub cl, -73
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
adc al, dil
mov sil, dl
neg rax
movzx dx, al
adc dil, cl
sub si, ax
xor ax, 13329
adc al, -86
sub al, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
