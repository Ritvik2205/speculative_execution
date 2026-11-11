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
add al, -47
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
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
btr rcx, 131
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb di, si
add al, 3
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 74
add al, -13
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
sub eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
