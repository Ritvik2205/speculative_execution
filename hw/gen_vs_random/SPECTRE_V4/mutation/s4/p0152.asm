.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and cx, 17
test al, 66
dec dl
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
cmovnz edi, edx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
add di, -74
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
sbb ax, -19255
adc al, 69
cmovle edx, esi
mov dl, -34
or ebx, esi
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
cmovnbe rcx, rax
xor dil, dl
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
test bl, al
cmovnb ax, ax
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
imul rbx
sbb rsi, rbx
or al, -71
xchg dl, dl
and ax, 35
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
imul si, bx, -16
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
sbb cl, 20
add al, -71 # instrumentation
adc al, bl
cmovb edx, esi
neg cl
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
