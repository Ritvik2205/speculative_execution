.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub si, dx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
xchg rsi, rax
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
neg cx
mul dx
cmovnp ax, cx
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
bt cx, 31
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 69
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
add cl, 53 # instrumentation
cmovnbe eax, ecx
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
imul ax, cx, 43
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
mul si
add dl, 81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
xor eax, -48271836
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
mov eax, 1596316323
sbb al, cl
adc rsi, rbx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 50
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
add al, 27 # instrumentation
mov dl, cl
adc rax, rdi
imul dl
mov cl, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
