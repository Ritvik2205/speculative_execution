.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bx, dx
add bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
cmovbe rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
cmovnp ebx, eax
cmp cl, cl
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
xor al, -60
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 59
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and cl, sil
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
add dl, -85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
sbb al, 95
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 44
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
cmovnl di, ax
cmp dl, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
sub al, sil
dec al
adc edi, -83
cmovnb rsi, rdx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
cmovnb dx, si
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
add cl, -62
mov bl, dil
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
or bl, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 80
imul al
cmovnz ax, di
cmovnb dx, ax
neg rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
