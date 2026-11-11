.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
and ax, 35
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
dec dl
neg cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xchg dl, dl
or al, 109
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
or al, al
imul rbx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
cmovle edx, esi
sbb cl, -104
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 55
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
test bl, al
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and cx, 17
adc al, 69
cmovnz edi, edx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
cmovnb ax, ax
cmovnbe rcx, rdx
test bl, bl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test al, 66
cmovb edx, esi
mov dil, -118
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
cmp rax, 2115020203
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
