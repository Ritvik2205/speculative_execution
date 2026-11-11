.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns si, ax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
cmp bl, 13
cmovnp rax, rcx
bt ebx, 228
cmovnp ecx, ecx
xor rsi, -3
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
add dl, 41
cmovle rsi, rcx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
movzx rdi, ax
xor cl, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
cmovnl ax, di
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 42
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
bt ebx, 228
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
cmovnle ax, ax
cmp di, 64
mov dl, dl
add bl, bl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], esi
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
cmp bl, cl
xchg rdi, rsi
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
movzx ax, al
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 26
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rax
test edi, -1249897727
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
dec rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
