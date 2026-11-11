.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
adc al, 69
add di, -74
neg cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and ax, 35
sbb rsi, rbx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
sbb ax, -26881
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
dec dl
or ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
imul rbx
test al, 80
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and cx, 17
xor dil, dl
cmovb edx, esi
sbb bl, 57
cmovnz edi, edx
xchg dl, dl
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovnbe rcx, rax
imul si, bx, -16
cmovnl rbx, rdi
sbb cl, 19
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
cmovle edx, esi
test bl, al
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovnb ax, ax
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
or al, 96
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
mov dl, -34
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
