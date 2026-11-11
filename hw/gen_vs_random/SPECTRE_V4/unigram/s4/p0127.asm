.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, 95
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 19
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovbe rsi, rbx
xor al, al
cmovp rcx, rax
cmovz rcx, rdx
cmovle rax, rdi
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
adc sil, al
add rdx, 1
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
add cl, -84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
imul ax, dx, 9
and dil, dl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
and dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
cmovnp cx, cx
adc sil, dl
and si, bx
add dl, 109
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax]
adc cl, dl
btr rsi, 20
add cl, cl
add al, -7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
neg dl
or al, -83
and dil, al
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and ebx, -4
cmovp ebx, ecx
test al, dil
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], 56
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
