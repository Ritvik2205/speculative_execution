.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
sub cl, al
or cl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
adc ecx, ebx
adc sil, -63
and cl, 126
or al, cl
imul dx, ax, -115
and dx, dx
cmp cl, -80
sbb al, -39
cmovns di, cx
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
cmovnbe esi, ebx
adc rsi, rcx
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmp al, cl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
add cl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and dx, -107
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
add bl, cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
test dl, -81
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 10
bts rbx, rax
and cl, 32
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rax, 1827025056
xor ecx, eax
sbb al, -14
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
adc al, cl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
