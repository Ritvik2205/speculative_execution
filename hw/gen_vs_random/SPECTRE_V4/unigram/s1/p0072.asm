.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
adc sil, 77
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 84
xchg bl, dil
xor cx, -80
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
test rcx, rbx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
add rax, 1049076260
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
or al, -90
or di, dx
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 50
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 12
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
mul dl
sub dl, -16
not sil
test dl, dl
inc eax
mul rdx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
or rax, -823069511
sub cl, sil
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
test ax, 2960
add al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], ax
adc dil, -15
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
cmovz ax, dx
xchg di, dx
dec sil
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
add rax, 1049076260
cmovp bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
