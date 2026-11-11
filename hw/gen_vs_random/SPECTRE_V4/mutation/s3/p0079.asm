.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -74
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
xor dil, 117
bts ecx, 0
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
cmovnl rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
adc sil, -63
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
test dl, bl
cmovo si, dx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
cmp bl, al
cmovl dx, dx
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
sub cl, -127
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
or si, bx
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
test cx, cx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor al, 118
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
cmovbe dx, ax
or ebx, eax
or edx, -83
add rax, 114
xor ax, -17712
or cx, dx
sub al, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
cmovp esi, esi
mov rsi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
test dil, sil
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
