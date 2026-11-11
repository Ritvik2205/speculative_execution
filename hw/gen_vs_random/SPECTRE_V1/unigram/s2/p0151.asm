.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
add al, -51 # instrumentation
cmovno rax, rbx
cmovle si, cx
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
add bl, -118 # instrumentation
cmovp ax, ax
mov cl, dl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and dx, 19
dec bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edx
cdq
cmovnp rdi, rsi
add dl, -77 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
imul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
