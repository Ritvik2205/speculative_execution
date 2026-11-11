.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
cmovnbe eax, edx
adc edx, edi
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
adc dil, -17
cmovl si, di
sbb cl, dl
adc ecx, 114
sbb eax, -920840872
btc rcx, rax
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
sub ax, -1908
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
bt rdx, rdx
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
bts bx, cx
cmovbe bx, dx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and dl, sil
test ecx, -304234347
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
neg ax
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and edi, edi
btr bx, ax
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
movzx ecx, si
inc eax
mov al, al
xor bl, -126
cmovnp bx, si
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and al, 5
sub eax, -1804712207
adc cl, al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
or dil, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
btc ecx, edi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
