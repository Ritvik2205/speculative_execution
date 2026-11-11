.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rcx, rax
cmovb edx, esi
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovnz edi, edx
adc al, 69
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
imul rbx
test al, 80
sbb cl, -104
sbb bl, 57
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
add di, -74
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or ebx, esi
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
cmovnl rbx, rdi
cmovle edx, esi
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
imul si, bx, -16
and ax, 35
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
neg cl
and cx, 17
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
cmovnb ax, ax
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
sbb ax, -19255
mov dl, -34
or al, 109
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
sbb rsi, rbx
dec dl
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test bl, al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
