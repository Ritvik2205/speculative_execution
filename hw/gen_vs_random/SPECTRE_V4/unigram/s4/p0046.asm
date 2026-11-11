.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap edx
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add cl, 38
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 21
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 93
cmovo di, cx
cmovnb eax, ebx
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
cmovnle si, si
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sub edi, 15
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
sub esi, ebx
or edx, edi
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 99
add cl, -42 # instrumentation
adc sil, dil
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
imul ax, bx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
add bl, sil
cmovnp edx, ecx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xchg eax, edx
imul rcx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
adc al, sil
sbb bl, -94
add cl, 8 # instrumentation
adc cl, bl
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
mov cl, cl
adc al, cl
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rcx
imul dx
sub dil, al
adc dil, al
sbb bl, dil
imul rdx, rcx
sbb rbx, rax
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
