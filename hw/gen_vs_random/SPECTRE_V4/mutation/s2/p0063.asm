.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rbx, rdi
or ebx, esi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
cmovnbe rcx, rax
sbb cl, -104
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
xor dil, dl
dec dl
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
cmovle edx, esi
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
imul rbx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
cmovnz edi, edx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
xchg dl, dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
sbb rsi, rbx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and ax, 35
test al, 66
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb ax, -26881
cmovb edx, esi
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
neg cl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
test bl, al
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovnb ax, ax
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
adc al, 36
mov dl, -34
or al, 109
add di, -74
sbb bl, 57
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
imul si, bx, -16
and cx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
