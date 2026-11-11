.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
cmovp esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
xor al, -40
sub cl, -119
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
test dil, sil
or edx, -83
test dl, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
mov rsi, rdi
xor ax, -29507
test cx, cx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
adc sil, -63
or al, dl
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
bts ecx, 0
sub al, al
cmovbe dx, ax
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
or cx, dx
cmovl dx, dx
add rax, -1121139858
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
xor dil, -23
cmovnl rsi, rax
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
or ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or si, bx
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
cmp bl, al
cmovo si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
