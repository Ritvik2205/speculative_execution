.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdi, si
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
imul cl
sub dil, -10
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovnbe rdx, rsi
xor eax, -164167056
or cl, 51
cmovns ax, di
adc al, 69
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 36
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
cmovnbe rbx, rbx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
mov rcx, 4219775168754920203
cmovle rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
sub dil, -10
sbb bx, ax
adc al, 69
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 78
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 43
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
xor dil, al
and rsi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rsi]
and al, sil
sbb bl, bl
test dil, cl
cmovb ebx, edi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
bts ecx, ecx
add cl, 106 # instrumentation
cmovnp rbx, rsi
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
adc cl, 85
adc cl, dl
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
add rdi, -94
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
