.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -23
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
xor al, -82
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
cmp bl, al
adc sil, 111
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
or si, bx
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
or cx, dx
or al, dl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
test cx, cx
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
cmovnl rsi, rax
cmovl dx, dx
test dil, sil
or ebx, eax
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
sub al, al
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
cmovbe dx, ax
cmovp esi, esi
sub cl, -51
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
test dl, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
bts ecx, 0
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
add rax, 1049076260
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
cmovo si, dx
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
xor ax, -22861
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
or edx, -83
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
mov rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
