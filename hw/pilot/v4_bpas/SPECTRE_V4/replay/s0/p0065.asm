.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 69 # instrumentation
cmovnbe di, cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
add bl, 102 # instrumentation
cmovnp edi, eax
or eax, 1001462340
sub rax, 714283065
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
or al, 1
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmovs cx, bx
test dl, -102
or edx, -118
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
adc sil, -31
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
add bl, cl
add cl, al
cmp edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
add al, -1
sub bl, dil
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovno rcx, rsi
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
inc cl
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
adc al, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or di, 122
imul esi, esi, 60
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
cmp al, -78
or cl, -55
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
xor rsi, -3
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
