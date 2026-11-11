.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, -1688332460
cmp al, -52
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
add dil, 16
bts bx, di
cmovns rcx, rax
cmp cl, 62
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
or edi, 87
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
btr si, 52
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
adc bx, -89
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
test ecx, 42
test ax, ax
cmp edi, -104
and rbx, 69
add ebx, 3
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
btc ax, si
sbb di, -76
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
or ebx, esi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmovp rdi, rsi
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and bl, dil
movzx esi, si
sub dl, cl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ebx
adc bl, 89
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
