.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax]
xor al, 54
sub rcx, rsi
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
sbb bl, 79
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
bt rcx, rdx
not ax
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
add cl, 44 # instrumentation
cmovz edi, edx
xor cl, 71
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
sbb al, al
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
