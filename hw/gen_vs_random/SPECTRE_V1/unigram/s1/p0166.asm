.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 31
add bl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
btr bx, 144
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and dil, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
test cl, -62
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
xor dil, -37
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
lea rcx, qword ptr [rsi + rcx + 98]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
