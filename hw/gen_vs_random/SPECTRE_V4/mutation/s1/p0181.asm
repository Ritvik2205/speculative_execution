.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rcx, rax
sbb cl, -104
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
or ebx, esi
neg cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
cmovnb ax, ax
add di, -74
imul rbx
or al, -71
imul si, bx, -16
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
test al, 66
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and cx, 17
and ax, 35
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
cmovnl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovnz edi, edx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
add al, -71 # instrumentation
adc al, bl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
sbb bl, -94
mov dl, -34
cmovb edx, esi
sbb ax, -19255
dec dl
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
xchg dl, dl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
xor dil, dl
cmovle edx, esi
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
test bl, al
sbb rsi, rbx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
adc al, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
