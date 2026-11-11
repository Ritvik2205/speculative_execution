.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, 11
cbw
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
cmovl cx, ax
add dl, -6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, cl
and rdi, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
mov dil, cl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 15
xchg al, al
sub sil, cl
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
