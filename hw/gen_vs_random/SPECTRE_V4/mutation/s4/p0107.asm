.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
cmp dx, cx
and cl, bl
not rbx
adc cl, dl
xor cl, -15
movsx rax, si
neg cl
mov al, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
btr ebx, 156
adc bl, al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
btc di, 107
or rbx, -108
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
mov bl, 58
cmp al, -44
cmovnle dx, si
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
btc ebx, ecx
sub dx, -12
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
xor bl, al
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
and cl, dl
sub sil, -35
neg rdi
or ax, 7381
mov dl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
mov edx, -950755477
add rax, 114
cmovnl esi, eax
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
sbb eax, -141178938
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
