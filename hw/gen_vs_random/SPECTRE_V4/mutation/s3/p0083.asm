.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
cmovl dx, dx
xor dil, 37
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
cmovbe dx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -74
mov rsi, rdi
test cx, cx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
adc sil, -2
cmp bl, al
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
test dil, sil
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
cmovp esi, esi
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
xor al, -40
or si, bx
cmovo si, dx
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
add rax, 1049076260
or cx, dx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
cmovnl rsi, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
sub cl, -73
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
bts ecx, 0
or ebx, eax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
sub al, al
or al, dl
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
xor ax, -17712
or edx, -83
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
