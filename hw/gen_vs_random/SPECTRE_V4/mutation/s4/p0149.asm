.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
add al, -55
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
cmp edi, ecx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
or cl, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
add bl, 69 # instrumentation
cmovnbe di, cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
cmovs cx, bx
inc cl
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
test dl, -125
or eax, 1001462340
adc sil, 111
or al, -88
xor rsi, -3
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
adc al, dl
add cl, al
or edx, 0
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
imul esi, esi, 60
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmp al, -44
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
cmovno rcx, rsi
add bl, cl
sub cl, cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
sub bl, dil
add bl, 102 # instrumentation
cmovnp edi, eax
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
or cl, -104
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
or di, 29
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
sub rax, 1914398062
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
