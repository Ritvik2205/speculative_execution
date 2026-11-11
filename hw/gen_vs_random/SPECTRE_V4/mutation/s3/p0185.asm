.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
xchg dl, dl
cmovnbe rcx, rax
cmovb edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
mov dl, -34
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
sbb bl, 57
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and cx, 17
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
or ebx, esi
cmovnz edi, edx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
sbb rsi, rbx
sbb ax, -19255
cmovnl rbx, rdi
imul si, bx, -16
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
test al, 80
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
test bl, al
cmovnb ax, ax
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
sbb cl, -104
dec dl
adc al, -58
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
imul rbx
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
add al, -71 # instrumentation
adc al, bl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and ax, 35
or al, 109
add di, -74
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
cmovle edx, esi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
