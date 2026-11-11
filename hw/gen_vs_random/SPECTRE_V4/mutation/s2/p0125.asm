.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
btc edx, 108
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
mov qword ptr [r14 + rsi], -1772009889
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
add bl, 42 # instrumentation
movsx rdx, bl
cmovnp ax, dx
mov edi, -1866088512
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
inc rax
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
cmovnb esi, ebx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
imul rdx, rbx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovnle bx, ax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
cmovnb dx, di
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
test ax, 2960
cmovnbe edi, ecx
xor bx, di
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
cmovbe rdx, rbx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
or si, 85
or bl, 80
adc rax, -691707152
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
