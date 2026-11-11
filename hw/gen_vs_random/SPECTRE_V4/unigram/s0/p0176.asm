.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, -1293796332
sbb di, -105
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
movzx ecx, si
add dx, 58
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and si, cx
adc rcx, rbx
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
cmp sil, dl
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
adc al, sil
neg rbx
sub al, dil
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 61
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
cmovnb bx, cx
cmp bl, sil
imul bx, bx
mov rdx, -3284511739993892328
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 27
test bl, dl
sbb ecx, 52
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
bts dx, 26
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
btc ebx, 3
movzx ecx, al
inc al
xor rcx, -111
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
sub bl, cl
bt cx, 31
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
not rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
