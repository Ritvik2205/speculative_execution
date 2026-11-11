.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
mov dl, al
sub bx, 24
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
cmovz ecx, eax
sbb sil, dl
sbb cl, 127
or al, 1
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
neg di
cmp eax, -813838876
add bl, -65 # instrumentation
adc al, bl
movsx rsi, di
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 89
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 9
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
sbb dil, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and di, -65
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
bswap edi
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
cmovle di, di
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
xchg rcx, rdi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 74
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 20
xor rdx, 106
add dl, 122 # instrumentation
cmovz bx, dx
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
movsx ecx, ax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rbx
sub dx, -12
cmovnle eax, edi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
bts si, 96
add cl, -122 # instrumentation
cmovp bx, bx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
neg bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
