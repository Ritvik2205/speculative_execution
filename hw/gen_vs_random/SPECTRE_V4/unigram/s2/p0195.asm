.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rsi, rsi
add rax, 28
cmovle esi, eax
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add dl, -99 # instrumentation
not edx
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
movzx bx, bl
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
imul cl
and cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
mul dl
test sil, 37
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
xor ecx, ebx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 28
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
cmp bl, al
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
add bl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
bts edx, eax
movsx eax, sil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
xor dil, al
mov sil, 100
adc bx, -89
cmovnle ax, cx
imul bx, si, 24
test dl, al
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 30
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
cmovle ax, bx
dec edx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
test ebx, eax
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 39
test sil, 82
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
sbb dil, 42
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 9
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
test eax, 1880179600
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
