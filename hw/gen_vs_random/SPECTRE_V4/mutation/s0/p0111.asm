.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
add bl, cl
xor rsi, -102
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
sub rax, -1066968986
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
add bl, 102 # instrumentation
cmovnp edi, eax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
cmovs cx, bx
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
test dl, 24
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
cmovno rcx, rsi
adc sil, -31
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
add bl, 69 # instrumentation
cmovnbe di, cx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
cmp edi, ecx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
or di, 122
or cl, dl
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
imul esi, esi, 60
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
inc cl
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
sub bl, dil
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
or al, -50
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
cmp al, -122
or edx, -118
add cl, al
or eax, -1213318393
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
or cl, 12
add al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
