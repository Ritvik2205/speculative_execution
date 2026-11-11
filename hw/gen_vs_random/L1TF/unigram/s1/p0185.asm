.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rsi, rax
inc eax
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
imul al
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
add cl, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
add al, 56
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
lea esi, qword ptr [rbx + rcx]
or bl, -88
cmovnp dx, bx
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
