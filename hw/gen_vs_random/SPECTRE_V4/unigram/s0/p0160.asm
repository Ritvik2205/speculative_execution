.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
cmovnp bx, bx
sbb bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
adc dl, cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
add dl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 92
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 31
sub rdx, 22
xchg esi, edi
add sil, bl
and bl, cl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 38
and bx, 95
add al, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
imul cx, ax
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test bl, 24
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
cmp si, 65
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
cmovs rsi, rbx
cmovl rsi, rax
cmp ebx, 67
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 3
sbb ecx, 23
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 67
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
cmovnb rdi, rcx
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
imul rdi
sbb sil, sil
cmp bx, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
