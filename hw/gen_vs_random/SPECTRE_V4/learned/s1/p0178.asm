.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
test eax, -544019457
add bl, -109 # instrumentation
sbb eax, -2052726562
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
sbb al, dl
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
adc rdi, 18
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 86
dec rax
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
xor al, dil
and sil, -49
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 87
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ecx
sub rsi, rax
test bl, dl
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdi]
cmp cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
movzx ecx, sil
bt eax, edi
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 67
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
cmovnle rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
or bl, cl
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
mov cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], dx
sub dl, dl
cmp cl, cl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
