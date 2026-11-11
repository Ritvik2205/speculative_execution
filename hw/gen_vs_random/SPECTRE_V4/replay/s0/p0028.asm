.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 15671
test dl, bl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
adc sil, -112
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
bts ecx, 0
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
or ebx, eax
test cx, cx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
or edx, 0
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
cmovbe dx, ax
xor al, -31
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or cx, dx
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
test dil, sil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub cl, 18
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add rax, 114
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
xor dil, 37
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
cmovl dx, dx
cmovp esi, esi
cmovo si, dx
or al, dl
cmovnl rsi, rax
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
sub al, al
or si, bx
cmp bl, al
mov rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
