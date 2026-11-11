.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
mov dl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 111
lea bx, qword ptr [rax]
xor rdi, rcx
add sil, 2
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
add al, al
and ax, 2806
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 35
and rdi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
