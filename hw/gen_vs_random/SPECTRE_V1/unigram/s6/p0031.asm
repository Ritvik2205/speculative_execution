.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, dil
neg rcx
dec cl
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
mov dl, 16
add al, -25 # instrumentation
sbb di, bx
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
imul rsi, rax
cmovnbe bx, dx
add dil, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
