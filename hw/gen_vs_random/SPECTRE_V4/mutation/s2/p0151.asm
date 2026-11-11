.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rcx, rax
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
add al, -71 # instrumentation
adc al, bl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
imul rbx
cmovnb ax, ax
and cx, 17
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
neg cl
xchg dl, dl
mov dl, -34
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovle edx, esi
sbb cl, 20
or ebx, esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovb edx, esi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
cmovnl rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
test bl, al
imul si, bx, -16
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
xor dil, dl
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
sbb bl, 57
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and ax, 35
or al, -71
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
dec dl
adc al, 69
cmovnz edi, edx
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
sbb ax, -26881
add di, -74
test al, 66
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
sbb rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
