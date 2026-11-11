.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and cx, 17
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
imul rbx
or al, 95
sbb rsi, rbx
sbb bl, 57
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovle edx, esi
xchg dl, dl
imul si, bx, -16
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
sbb ax, -19255
cmovnbe rcx, rax
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
adc al, -58
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
cmovnb ax, ax
test al, 80
mov dl, -34
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
or ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
test bl, al
add di, -74
dec dl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
cmovnz edi, edx
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cmovnl rbx, rdi
neg cl
and ax, 35
cmovb edx, esi
add al, -71 # instrumentation
adc al, bl
xor dil, dl
sbb cl, 20
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
