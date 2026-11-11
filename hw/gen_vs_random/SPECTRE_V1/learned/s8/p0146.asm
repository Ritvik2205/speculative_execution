.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 48
cmp rsi, 53
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and al, cl
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
add sil, dl
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 57
adc cl, -81
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
