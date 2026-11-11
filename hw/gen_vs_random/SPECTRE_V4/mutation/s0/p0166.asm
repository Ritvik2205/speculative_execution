.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -603
inc rsi
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -117
neg rdi
adc cl, al
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
test al, dil
and rdi, 45
imul esi, edx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
test dl, -81
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
add rsi, 68
mov cl, bl
test rbx, 1219566903
or si, -84
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
cmp dx, di
cmovp di, di
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
not sil
cmovnp rax, rbx
inc si
mov cl, al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
sbb edi, edi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
test dl, -125
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
cmovo esi, eax
sub esi, -10
bswap rbx
sub rsi, -104
adc dil, sil
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
