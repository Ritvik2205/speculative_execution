.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xchg bl, bl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and al, bl
add al, -109
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
bswap rbx
cmp bx, ax
sbb bl, 79
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
xor bx, 47
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
cmovp cx, si
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
add bl, -76 # instrumentation
cmovnle cx, dx
cmovz edi, ecx
imul rdi
add al, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
