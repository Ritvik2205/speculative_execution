.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, -34
cmovnl rbx, rdi
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
neg cl
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
adc al, 69
sbb bl, 57
or al, 109
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
or ebx, esi
dec dl
test al, 80
and cx, 17
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
imul si, bx, -16
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
sbb cl, -104
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
cmovb edx, esi
cmovnz edi, edx
sbb rsi, rbx
imul rbx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and ax, 35
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
test bl, al
cmovnbe rcx, rax
xchg dl, dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
sbb ax, -19255
cmovle edx, esi
cmovnb ax, ax
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
add al, -71 # instrumentation
adc al, bl
add di, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
