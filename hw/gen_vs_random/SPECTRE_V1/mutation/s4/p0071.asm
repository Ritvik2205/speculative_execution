.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
xor al, -74
sbb bl, -41
lea di, qword ptr [rax]
sub rcx, rsi
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
bt rcx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
sbb al, al
xor cl, 78
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
not ax
add cl, 44 # instrumentation
cmovz edi, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
