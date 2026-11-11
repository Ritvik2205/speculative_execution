.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovnl rbx, rdi
and ax, 35
imul rbx
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
dec dl
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
xchg dl, dl
test al, 80
cmovb edx, esi
sbb ax, -19255
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and cx, 17
sbb cl, -104
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
cmovnz edi, edx
or ebx, esi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovnb ax, ax
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
add al, -71 # instrumentation
adc al, bl
cmovnbe rcx, rax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
or al, 95
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
xor dil, dl
cmovle edx, esi
mov dl, -34
test bl, al
sbb bl, -94
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
neg cl
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
sbb rsi, rbx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
imul si, bx, -16
add di, -74
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
adc al, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
