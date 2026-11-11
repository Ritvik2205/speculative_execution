.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
test dil, sil
sub al, al
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
test dl, bl
bts ecx, 0
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
cmovl dx, dx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
cmovp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
mov rsi, rdi
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
xor al, -120
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
cmovbe dx, ax
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
test cx, cx
or ebx, eax
cmovnl rsi, rax
cmovo si, dx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -74
xor dil, 117
or al, dl
add rax, -874478885
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
or si, bx
or cx, dx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
sub cl, -51
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
adc sil, 88
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
xor ax, 45
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
or edx, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
