.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -117
imul di
adc al, 116
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
cmp esi, 123
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
mov eax, -1056201206
sub bx, 24
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
btc edx, eax
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 36
cmp rcx, -121
add dx, 4
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
test ecx, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
adc bl, 97
btc rsi, rdi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 34
movzx rdi, cx
cmovnbe rcx, rax
imul rdx, rdx
neg al
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
btr bx, dx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
cmovz rdi, rcx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 20
or rdx, 1
cmp esi, edx
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
inc rax
cmovnz rdx, rax
or bl, dl
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
mov dl, cl
btr dx, 209
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
mov rdx, -3284511739993892328
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
