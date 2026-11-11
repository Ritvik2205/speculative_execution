.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor dil, -23
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
sub al, al
adc sil, -2
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
test dil, sil
sub cl, 78
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
cmovbe dx, ax
cmovp esi, esi
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
or cx, dx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
xor ax, -6064
test cx, cx
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
or ebx, eax
cmovnl rsi, rax
cmovo si, dx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
or si, bx
or edx, 0
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
test dl, bl
mov rsi, rdi
xor al, -82
add rax, 1049076260
cmovl dx, dx
or al, dl
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
bts ecx, 0
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
