.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, 84
cmovnl cx, bx
sub bl, 17
imul rsi
neg dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 99
neg ecx
adc al, dl
and rbx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rbx]
add dx, -90
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
xor sil, 56
and dl, 81
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
and cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
xor dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rbx]
test eax, 1880179600
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
sbb al, 32
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
cmp al, dil
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
add dl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 1
imul si, cx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 72
cmp rcx, 86
and rbx, 69
test edx, 573099753
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 21
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
cmovnb di, di
cmovnbe rdx, rcx
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
add cx, 29
cmovns edx, edi
movzx rsi, ax
cmp rdx, 9
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
