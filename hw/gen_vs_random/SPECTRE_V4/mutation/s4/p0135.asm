.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, -2
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
mov rsi, rdi
xor dil, 117
or si, bx
cmovnl rsi, rax
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
bts ecx, 0
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
or cx, dx
or al, dl
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
sub cl, 92
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
test cx, cx
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
cmovp esi, esi
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
or ebx, eax
test dl, bl
sub al, al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
cmp bl, al
cmovl dx, dx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
add rax, 1049076260
xor ax, 30500
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
cmovbe dx, ax
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
xor al, 57
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
test dil, sil
or edx, 0
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
cmovo si, dx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
