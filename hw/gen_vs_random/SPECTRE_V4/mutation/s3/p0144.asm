.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
sbb rsi, rbx
cmovb edx, esi
sbb cl, 19
cmovnbe rcx, rax
add di, -74
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
cmovle edx, esi
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
sbb bl, -94
and ax, 35
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
test al, 80
cmovnl rbx, rdi
or al, 95
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
imul si, bx, -16
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovnz edi, edx
dec dl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
mov dl, -34
xor dil, dl
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
imul rbx
cmovnb ax, ax
adc al, 36
or ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
sbb ax, -26881
neg cl
and cx, 17
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
test bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
