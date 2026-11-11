.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
cmovnb ax, ax
sbb cl, 19
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
test bl, al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
add di, -74
sbb rsi, rbx
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
cmovb edx, esi
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
xor dil, dl
cmovnz edi, edx
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
cmovnbe rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
imul rbx
and ax, 35
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
imul si, bx, -16
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
sbb bl, -94
adc al, 69
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, -71 # instrumentation
adc al, bl
dec dl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
or al, 96
neg cl
cmovle edx, esi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
cmovnl rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and cx, 17
mov dl, -34
or ebx, esi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
test al, 80
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
sbb ax, -26881
xchg dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
