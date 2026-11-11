.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 103
and si, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
sub ax, 8246
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
sub rdx, rdx
mov eax, 522619143
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
adc al, dl
or edx, edi
or rax, 1042095162
adc bl, al
test al, -26
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
xor bx, 106
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sub eax, -672265139
test dil, sil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub cl, -119
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add rax, -1121139858
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
xor dil, 117
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
