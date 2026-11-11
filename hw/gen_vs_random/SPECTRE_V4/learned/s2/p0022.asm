.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
and ax, 35
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
dec dl
neg cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xchg dl, dl
or al, 95
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
add di, -74
sbb ax, -26881
imul rbx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
cmovle edx, esi
sbb cl, 20
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
test bl, al
imul si, bx, -16
and cx, 17
adc al, 36
cmovnz edi, edx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
adc al, -58
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
cmp dl, cl
cmovnl rbx, rdi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
or sil, 5
cmovb ecx, eax
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 49
cmp al, 70
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
cmp rcx, 46
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and sil, -49
adc al, 36
bt ebx, 228
add bx, 110
cmovs rdi, rsi
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
