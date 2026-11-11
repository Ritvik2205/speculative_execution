.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
and cx, 17
sbb cl, 19
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
test al, 66
imul si, bx, -16
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovnbe rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
cmovnz edi, edx
dec dl
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
mov dl, -34
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
xchg dl, dl
cmovb edx, esi
adc al, 36
add di, -74
sbb bl, -94
cmovnl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
test bl, al
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
sbb rsi, rbx
imul rbx
cmovle edx, esi
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
sbb ax, -26881
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
add al, -71 # instrumentation
adc al, bl
and ax, 35
neg cl
cmovnb ax, ax
or al, 95
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
