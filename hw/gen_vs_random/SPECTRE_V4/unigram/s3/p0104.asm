.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
movsx ecx, si
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
sub cl, al
add cl, 8 # instrumentation
adc al, dl
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 4
movzx rax, dx
mov esi, edx
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
cmp dl, 72
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
cmp sil, 88
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovnz dx, cx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
sbb dil, 82
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
sbb dl, -99
xchg di, ax
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 90
add sil, 26
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
bt eax, 84
add cl, dl
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
xor cl, -54
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
movzx rsi, di
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
imul dx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 22
xor dil, dl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 46
and al, dl
and di, 97
cmp al, al
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
movzx di, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
