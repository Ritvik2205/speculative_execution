.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax]
sbb bl, -41
xor al, -42
sub rcx, rsi
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
xor cl, 78
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
sbb al, al
bt rcx, rdx
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
not ax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
add cl, 44 # instrumentation
cmovz edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
