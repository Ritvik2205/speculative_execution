.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, 19
test al, 80
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
xchg dl, dl
sbb ax, -19255
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
or al, 96
adc al, -58
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
cmovnl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
cmovb edx, esi
and ax, 35
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
sbb rsi, rbx
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
imul si, bx, -16
add al, -71 # instrumentation
adc al, bl
sbb bl, -94
cmovle edx, esi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
imul rbx
cmovnb ax, ax
and cx, 17
xor dil, dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
dec dl
or ebx, esi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
mov dl, -34
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
test bl, al
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
add di, -74
cmovnz edi, edx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
neg cl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
cmovnbe rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
