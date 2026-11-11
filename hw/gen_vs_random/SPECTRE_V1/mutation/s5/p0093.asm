.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -74
sbb bl, -41
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
sub rcx, rsi
lea di, qword ptr [rax]
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 44 # instrumentation
cmovz edi, edx
not ax
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
xor cl, 78
sbb al, al
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
bt rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
neg rdi
or sil, 34
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
add sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
