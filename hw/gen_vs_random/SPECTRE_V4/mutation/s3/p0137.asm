.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
cmovnl rbx, rdi
cmovle edx, esi
cmovnb ax, ax
neg cl
sbb ax, -19255
test bl, al
dec dl
adc al, 36
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and cx, 17
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
xchg dl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
sbb rsi, rbx
or ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
imul si, bx, -16
or al, 95
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
cmovnbe rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
imul rbx
cmovb edx, esi
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and ax, 35
add di, -74
sbb cl, -104
cmovnz edi, edx
xor dil, dl
test al, 66
mov dl, -34
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
sbb bl, -94
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
