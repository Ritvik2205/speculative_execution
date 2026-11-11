.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
cmovle edx, esi
and ax, 35
sbb rsi, rbx
cmovnbe rcx, rax
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
test bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
imul rbx
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
dec dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
cmovnl rbx, rdi
cmovnz edi, edx
and cx, 17
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
add al, -71 # instrumentation
adc al, bl
neg cl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
sbb ax, -26881
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
cmovnb ax, ax
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
sbb cl, 19
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
adc al, 69
sbb bl, -94
test al, 80
add di, -74
mov dl, -34
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
or ebx, esi
imul si, bx, -16
cmovb edx, esi
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
or al, 95
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
