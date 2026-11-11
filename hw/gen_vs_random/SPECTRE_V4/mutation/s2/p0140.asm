.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmovb edx, esi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovle edx, esi
sbb ax, -19255
xchg dl, dl
sbb bl, 57
neg cl
test bl, al
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
or al, 96
sbb rsi, rbx
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
cmovnbe rcx, rax
test al, 80
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
or ebx, esi
sbb cl, 20
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
dec dl
cmovnl rbx, rdi
add di, -74
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
xor dil, dl
and ax, 35
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
mov dl, -34
and cx, 17
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
cmovnb ax, ax
imul si, bx, -16
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
cmovnz edi, edx
imul rbx
adc al, -58
add al, -71 # instrumentation
adc al, bl
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
