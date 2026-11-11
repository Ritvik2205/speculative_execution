.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul esi, esi, 60
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
sub cl, cl
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
add bl, cl
or edx, -128
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
xor rsi, -102
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovs cx, bx
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
test dl, -81
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
add bl, 69 # instrumentation
cmovnbe di, cx
sub bl, dil
or cl, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
inc cl
or cl, -104
adc al, dl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
adc sil, 111
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
add bl, 102 # instrumentation
cmovnp edi, eax
or al, -16
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmp edi, ecx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
add al, -82
or eax, -646827727
or di, 29
cmp al, 75
sub rax, -1680844889
add cl, al
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
cmovno rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
