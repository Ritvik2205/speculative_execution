.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
test al, 80
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovnbe rcx, rax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
or ebx, esi
sbb ax, -19255
xchg dl, dl
cmovle edx, esi
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
adc al, 36
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
add di, -74
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
dec dl
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
cmovnb ax, ax
imul si, bx, -16
cmovb edx, esi
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
sbb bl, -94
test bl, al
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
cmovnz edi, edx
sbb cl, 20
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
sbb rsi, rbx
and cx, 17
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and ax, 35
imul rbx
mov dl, -34
or al, 95
cmovnl rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
