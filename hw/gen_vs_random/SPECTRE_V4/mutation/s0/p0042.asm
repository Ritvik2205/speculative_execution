.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz edi, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
sbb rsi, rbx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
imul si, bx, -16
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
adc al, -58
sbb cl, 20
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
xchg dl, dl
and ax, 35
add di, -74
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
neg cl
cmovnl rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
cmovnb ax, ax
mov dl, -34
add al, -71 # instrumentation
adc al, bl
test al, 66
or al, -71
cmovnbe rcx, rax
cmovb edx, esi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
dec dl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
imul rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
sbb bl, -94
sbb ax, -26881
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
test bl, al
or ebx, esi
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
xor dil, dl
cmovle edx, esi
and cx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
