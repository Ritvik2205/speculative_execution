.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul si, bx, -16
cmovnl rbx, rdi
cmovnbe rcx, rax
cmovnb ax, ax
neg cl
sbb bl, 57
imul rbx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
cmovnz edi, edx
mov dl, -34
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
cmovb edx, esi
and ax, 35
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
test bl, al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
adc al, 69
sbb ax, -26881
test al, 66
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and cx, 17
add al, -71 # instrumentation
adc al, bl
sbb cl, -104
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
or al, 109
dec dl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
or ebx, esi
xchg dl, dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
sbb rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovle edx, esi
add di, -74
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
