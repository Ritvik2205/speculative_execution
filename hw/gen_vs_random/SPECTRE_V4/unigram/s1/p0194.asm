.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 93
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
add dil, 122 # instrumentation
cmovz bx, di
btc ecx, edx
sub edi, 24
cmovp rdi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rcx]
xor rdx, rcx
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
bts si, si
cmovnl rsi, rdi
sbb cx, -114
adc rbx, rcx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rcx
sub si, dx
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
and al, 5
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
cmovl esi, edi
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
xchg ebx, eax
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
sub dil, 65
bts cx, 158
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
cmovle rbx, rax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
add al, -8 # instrumentation
xchg sil, al
add cl, 7 # instrumentation
adc di, 2
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
add bx, 8
add dl, 45 # instrumentation
cmovbe rcx, rbx
mov ebx, 51969593
cmovnp ebx, eax
cmp eax, 89
cmovnb dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
