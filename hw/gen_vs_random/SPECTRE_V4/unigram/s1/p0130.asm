.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, -304234347
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and dil, sil
xchg cx, dx
xchg eax, ecx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 48
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
add rbx, 11
cmovbe si, di
cmovnz rsi, rax
cmp bl, 12
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rbx
cmovnp edx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 94
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 39
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
add cl, 9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
or cx, 59
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
or edi, -64
xchg eax, edi
add al, 121 # instrumentation
movsx edx, cx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 97
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
add cl, 53 # instrumentation
cmovnbe edi, esi
neg al
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
movsx rdx, ax
adc al, al
and esi, ecx
mul ax
inc rcx
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
adc sil, bl
add cl, -84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
