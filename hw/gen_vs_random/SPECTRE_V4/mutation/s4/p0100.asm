.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sub rax, 714283065
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
cmovs cx, bx
or cl, dl
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
or al, -50
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
sub cl, cl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
add cl, al
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
cmp al, 114
inc cl
or cl, 12
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
imul esi, esi, 60
cmp edi, ecx
or eax, -1213318393
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
add bl, 69 # instrumentation
cmovnbe di, cx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
add al, -4
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
adc al, dl
or edx, -118
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
sub bl, dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
adc sil, 77
test dl, -102
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
add bl, 102 # instrumentation
cmovnp edi, eax
or di, 29
add bl, cl
cmovno rcx, rsi
xor rsi, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
