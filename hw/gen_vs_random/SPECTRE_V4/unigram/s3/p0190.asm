.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
imul di, ax
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 63
cmp al, cl
sbb sil, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
sbb al, sil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
btc ecx, ebx
cmovnz rdi, rdx
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
neg edx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ecx
neg rbx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
or bx, -33
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 77
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
adc dl, bl
btr dx, ax
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
sbb dx, 2
add cl, -23 # instrumentation
cmovno ebx, edx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
test edi, 2142010790
xor dx, 7
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
add al, -71 # instrumentation
cmovb rcx, rdx
adc dl, al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
sub edi, 57
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rdx
add bl, -24 # instrumentation
cmovnbe cx, cx
cmp eax, 1521417271
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
cmovnz rbx, rcx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
cmovnle rdi, rsi
neg dil
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
test rsi, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
