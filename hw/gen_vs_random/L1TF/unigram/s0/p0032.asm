.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
lea dx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], -123
cmp sil, sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add al, 83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
btr cx, di
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], cx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
setno bl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
