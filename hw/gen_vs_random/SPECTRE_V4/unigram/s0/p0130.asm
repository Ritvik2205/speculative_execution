.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
mov al, 7
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
cmovz rcx, rbx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdx
xor rax, 944027678
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
imul bl
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
mov rax, -8100960678429780222
xor si, -73
dec ax
xor ebx, 40
and rax, 86
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
add di, 73
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 59
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
btr rcx, rsi
bts edi, ecx
test si, 67
cmp rbx, -66
add dil, dil
test bl, dl
and sil, -84
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
xor eax, 365940537
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
btc rdx, rdi
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
adc al, 116
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
add bl, 95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
add cx, 35
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
add al, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
imul si, dx
sub al, 127
cmovnz si, dx
test si, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
