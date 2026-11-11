.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
test al, 66
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
xor dil, dl
adc al, 36
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovnz edi, edx
cmovle edx, esi
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
sbb cl, 20
imul rbx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
cmovnbe rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
or al, -71
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmovnl rbx, rdi
test bl, al
sbb rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
or ebx, esi
add al, -71 # instrumentation
adc al, bl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
add di, -74
dec dl
and cx, 17
sbb ax, -19255
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovb edx, esi
mov dl, -34
cmovnb ax, ax
and ax, 35
xchg dl, dl
imul si, bx, -16
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
neg cl
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
