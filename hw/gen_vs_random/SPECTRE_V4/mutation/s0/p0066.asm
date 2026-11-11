.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
btc edx, 164
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
movzx rax, di
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
cmp cl, dl
dec cl
cmp rdi, 28
or cl, cl
bt si, 18
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
mov ebx, ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add al, 105 # instrumentation
cmovl esi, ecx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
add bl, 42 # instrumentation
movsx rdx, bl
cmovnp ax, dx
mov edi, -744634650
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
inc rax
mov dl, al
cmovl rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
btc ebx, edi
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
test eax, 1340292467
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
test ax, 19171
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
movzx di, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
mov al, bl
bts rbx, rcx
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
bt cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
