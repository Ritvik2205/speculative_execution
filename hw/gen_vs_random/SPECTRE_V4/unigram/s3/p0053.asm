.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, di
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
cmp rax, -2096157586
sub si, si
cmovno ebx, esi
add bl, 71 # instrumentation
adc dx, di
cmovnle bx, cx
and rsi, 0b1111111111111 # instrumentation
xor dil, bl
test rcx, 79
and cl, 126
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
movsx ecx, cx
cmovbe eax, ecx
and dl, 24
xchg sil, cl
sub dil, -28
mul al
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
cmp al, 75
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovs eax, edx
and bl, bl
imul rdx, rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
cmovs ebx, edx
xor rbx, -99
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], 7
adc edx, -86
add sil, -18
sub edx, 73
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
cmovle rcx, rdx
cmovnle edi, edx
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
and dl, 124
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
inc rbx
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
adc dil, cl
cmovnz cx, dx
sbb dl, bl
mov ebx, 51969593
adc sil, 88
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
