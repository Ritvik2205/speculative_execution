.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc si, 6
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
cmp rax, 900122030
add dl, -4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
cmovo ax, bx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, dil
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
add bl, 73 # instrumentation
mov rbx, 2
sbb dil, dil
setbe dil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
add dl, dil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
imul ecx, ecx, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
