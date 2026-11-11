.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
btr rdx, 161
cmovp eax, edi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
add cl, -38 # instrumentation
setbe dil
imul di, cx, 67
adc al, bl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add dx, -51
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
