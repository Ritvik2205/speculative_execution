.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
cmp sil, sil
sub bx, 24
cmovnle rax, rcx
or dil, 5
add al, 40
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
add ax, 6414
xor rax, 944027678
xor si, -73
add al, -3
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
dec eax
adc cl, 6
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 6
xor rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
cmovnp rdi, rdx
cmovz ecx, edi
cmp dx, 13
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
cmp ax, -18179
sub rdx, rsi
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
or al, bl
xor dil, 37
sub ecx, -107
xor al, -6
add cl, 9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
inc rsi
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
add dl, -4 # instrumentation
cmovp si, ax
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
add edx, 89
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
cmp cx, 0
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
mul cx
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
test bl, dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
