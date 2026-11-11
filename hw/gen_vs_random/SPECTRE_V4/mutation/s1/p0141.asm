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
xor qword ptr [r14 + rsi], -42
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
add di, -74
sbb ax, -19255
imul rbx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
cmovle edx, esi
sbb cl, 20
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
or rdi, rax
cmovnl rax, rax
movzx ecx, sil
test ebx, 1263899340
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
cmovnp ecx, ebx
and bl, dl
xchg rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnz eax, ebx
test rcx, -2118888343
adc al, cl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
not cx
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
sbb eax, -984782068
cmp rax, -227205962
cmovp cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
