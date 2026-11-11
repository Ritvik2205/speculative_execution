.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rdx + rdi]
add dil, 9 # instrumentation
adc dil, dl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
imul cx
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 16
cmp ax, dx
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 28
xor dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
