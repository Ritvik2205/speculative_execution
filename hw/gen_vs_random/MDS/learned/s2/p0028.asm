.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovz rbx, rsi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmovnp ebx, edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
or dl, al
xor sil, al
jmp .bb_0.1
.bb_0.1:
btc cx, 104
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
mov al, bl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and sil, -94
cmovnz edx, esi
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rcx
cmovz rbx, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
imul si, ax, 65
add al, 43
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and bl, 74
adc al, al
cmovz di, dx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
mov rsi, rax
sbb eax, 8
and sil, 65
cmovp rdi, rcx
movzx rdx, di
movzx edx, al
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rbx, rdi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
cmovnbe si, bx
xor eax, 73
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
sbb eax, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
