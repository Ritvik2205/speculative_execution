.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns dx, bx
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
imul edi, edx
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 46
cmovs rax, rbx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 7
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
add edi, 11
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
imul bx
sbb esi, 25
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
cmovnp dx, cx
mov bl, bl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
add rdx, 39
add cl, -21 # instrumentation
adc rbx, 49
mov dil, bl
sbb rax, rbx
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmp cl, 77
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 67
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
inc edx
xor rsi, rdx
add bl, -72
cmovnbe rax, rdi
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], eax
test bl, al
cmp di, 78
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 49
add dl, 41
btc edi, 84
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
add al, -26 # instrumentation
btr eax, 23
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
sbb sil, sil
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
xor edx, 42
test cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
