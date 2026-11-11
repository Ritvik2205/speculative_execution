.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ecx, edx
add dl, -55 # instrumentation
cmovnbe eax, ebx
cmovbe dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
or di, 0b1000000000000000 # instrumentation
bsr cx, di
adc rdx, -90
cmp dl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
mov al, dil
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rax
cmovl edi, eax
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 17
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
and cx, -117
xchg ecx, eax
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
bt rdi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
add cl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
sbb al, -3
dec cl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
adc bx, 52
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
mov rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
and si, -74
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
or edi, -78
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
mov sil, sil
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and cl, -118
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
mov dil, 9
movzx eax, bl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
