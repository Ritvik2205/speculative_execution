.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
imul si, bx, -16
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and ax, 35
add di, -74
dec dl
cmovb edx, esi
sbb rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
neg cl
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
test al, 80
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmovnb ax, ax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb ax, -19255
test bl, al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
add al, -71 # instrumentation
adc al, bl
or al, 109
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and cx, 17
or ebx, esi
imul rbx
sbb bl, 57
mov dl, -34
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
sbb cl, -104
cmovle edx, esi
cmovnbe rcx, rax
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xor dil, dl
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
cmovnz edi, edx
cmovnl rbx, rdi
adc al, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
