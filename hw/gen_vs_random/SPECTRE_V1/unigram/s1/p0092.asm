.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
sub rdx, rbx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], bx
lea si, qword ptr [rcx + rcx + 18]
imul al
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
bts bx, ax
sbb rsi, 28
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub esi, 87
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
setl al
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
setle cl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
