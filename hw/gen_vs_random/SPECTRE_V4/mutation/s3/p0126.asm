.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
imul rbx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
add di, -74
cmovnbe rcx, rax
neg cl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
test al, 80
adc al, 69
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
or ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
sbb rsi, rbx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
imul si, bx, -16
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
cmovnl rbx, rdi
xor dil, dl
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
or al, 96
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovb edx, esi
cmovnb ax, ax
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and ax, 35
dec dl
sbb cl, 19
cmovle edx, esi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, -71 # instrumentation
adc al, bl
and cx, 17
mov dl, -34
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
cmovnz edi, edx
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
sbb ax, -19255
test bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
