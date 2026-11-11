.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
mov rsi, rdi
or ebx, eax
sub al, al
cmovo si, dx
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
add rax, -1121139858
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
cmovbe dx, ax
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
adc sil, 88
cmovl dx, dx
cmp bl, al
test cx, cx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
cmovp esi, esi
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
or al, dl
or cx, dx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
test dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
xor ax, 13332
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or edx, -128
xor al, -60
test dil, sil
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
bts ecx, 0
sub cl, 18
or si, bx
xor dil, 117
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -74
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
cmovnl rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
