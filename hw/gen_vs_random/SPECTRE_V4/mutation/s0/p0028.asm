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
or al, -71
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
add di, -74
sbb ax, -26881
imul rbx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
cmovle edx, esi
sbb cl, 19
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
or dl, cl
or al, bl
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
sub sil, -36
cmovnle rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
add ax, 28666
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
movzx rcx, di
cmovl rdi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and al, -127
bt ebx, 228
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
