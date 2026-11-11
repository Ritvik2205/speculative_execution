.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, 69
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and cx, 17
cmovnbe rcx, rax
cmovnz edi, edx
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
test bl, al
sbb ax, -19255
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
neg cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
cmovnb ax, ax
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
xor dil, dl
sbb bl, -94
or al, -71
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
or ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
add al, -71 # instrumentation
adc al, bl
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
xchg dl, dl
mov dl, -34
cmovle edx, esi
imul si, bx, -16
dec dl
cmovnl rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
add di, -74
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
cmovb edx, esi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and ax, 35
imul rbx
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
test al, 80
sbb rsi, rbx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
sbb cl, 19
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
