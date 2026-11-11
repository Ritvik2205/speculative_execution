.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1247892360
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
adc eax, 1019803307
sbb eax, 1675303701
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
cmp dl, 45
movsx edi, al
cmovl edx, esi
mov eax, eax
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
or rdi, 43
xor dx, 7
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
add al, al
sub rax, 120
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
sbb di, -105
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and dl, 126
sbb dl, bl
add dl, 109
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
mov ecx, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or al, 27
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
xor al, dl
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
cmovb rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
imul dil
adc rax, 519150753
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
sbb ax, 18812
and ax, 27239
xchg rbx, rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
