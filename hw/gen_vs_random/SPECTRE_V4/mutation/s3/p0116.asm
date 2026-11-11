.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rcx, rsi
add cl, al
adc sil, 77
inc cl
sub rax, -1881584175
sub bl, dil
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
test dl, -125
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
cmp edi, ecx
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
add al, -6
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
or edx, -128
adc al, dl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
or al, -16
cmp al, 116
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
add bl, 102 # instrumentation
cmovnp edi, eax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
imul esi, esi, 60
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
cmovs cx, bx
add bl, 69 # instrumentation
cmovnbe di, cx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
or eax, -1213318393
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
or di, 2
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or cl, 12
add bl, cl
xor rsi, -102
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
or cl, dl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
