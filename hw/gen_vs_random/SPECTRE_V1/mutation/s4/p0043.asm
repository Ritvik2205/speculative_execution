.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
sbb bl, 79
xor al, 78
sub rcx, rsi
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
not ax
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
sbb al, al
xor cl, 78
add cl, 44 # instrumentation
cmovz edi, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
bt rcx, rdx
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
