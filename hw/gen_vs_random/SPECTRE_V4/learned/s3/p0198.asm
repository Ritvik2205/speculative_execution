.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmp sil, 88
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
xor di, ax
xor dl, bl
or si, 66
xchg rcx, rax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
add rdi, 105
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
sub rsi, rax
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
sub cl, 116
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add sil, 26
sub dl, sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
inc al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
sub dl, sil
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
sbb dl, sil
and sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
