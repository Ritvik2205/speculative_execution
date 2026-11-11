.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rax, rdi
imul ax, bx
imul si, ax, 98
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and bl, bl
sub dl, 105
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
mov cl, 33
xor eax, -69
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
sub dl, 41
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 3
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
