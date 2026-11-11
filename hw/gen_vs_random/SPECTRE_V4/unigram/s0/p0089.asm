.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
btc edx, 108
test bl, 78
adc dl, al
cmp ecx, 78
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and cx, -117
or edx, -118
cmovbe dx, si
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovnle rbx, rdx
xor bx, si
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
mov sil, 20
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rsi
add edx, 89
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
mov ecx, -405458789
cmovnb ecx, edx
cmovp rax, rax
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
xchg bl, dl
cmovs dx, bx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
add al, sil
xor sil, sil
imul rax, rsi, 76
and rdi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdi]
xor al, al
adc sil, -31
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
add cl, 16 # instrumentation
cmovnz di, cx
sub edi, 35
add dl, -12 # instrumentation
cmovp edi, eax
btc ebx, ecx
xchg dx, dx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
adc dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
