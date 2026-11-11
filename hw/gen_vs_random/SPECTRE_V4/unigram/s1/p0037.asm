.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
btc rcx, 88
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
cmp esi, 123
test dil, -83
sub dl, bl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
cmp rdi, 28
dec di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 95
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
or rsi, rdx
bt bx, 58
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
movsx esi, dil
sub cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 8
or ax, 57
add cl, -27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
neg rbx
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
cmp cl, dil
add ecx, eax
add sil, -35 # instrumentation
mov cl, sil
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and ebx, eax
cmovl rbx, rdx
xor rax, -117
bt ax, bx
movzx ax, sil
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 69
bts ebx, 189
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 92
cmovno edx, ecx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
adc dil, sil
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
