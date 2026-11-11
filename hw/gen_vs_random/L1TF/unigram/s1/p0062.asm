.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
sub si, -105
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 23
cmovns rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmovnp dx, bx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
imul rdx, rcx, 32
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
add cl, -41 # instrumentation
adc ax, cx
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 1994547909
sub rbx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
