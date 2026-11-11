.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 16
sbb rax, 59
imul edx
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
movzx di, dl
cmp rbx, -91
neg rdi
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
cmovnp ebx, ecx
xor eax, eax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
bt si, ax
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
mov bl, al
neg di
cmovnb ebx, edx
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
cmovns di, ax
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
cmp al, cl
cmovle rcx, rdi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
test bl, -91
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
mov bl, 29
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
not cl
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
adc rax, 1690546225
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and ax, -603
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
test edi, -2098143765
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
