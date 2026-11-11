.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
xor dil, 37
mov rsi, rdi
cmovbe dx, ax
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
or edx, -83
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
or cx, dx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
sub al, al
cmp bl, al
test cx, cx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
add rax, -874478885
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -74
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
test dil, sil
cmovo si, dx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
or ebx, eax
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
xor ax, -6064
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or al, dl
or si, bx
adc sil, -112
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
cmovp esi, esi
cmovnl rsi, rax
xor al, 48
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
sub cl, -94
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
bts ecx, 0
cmovl dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
