.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
xchg bl, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
add al, -44
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, 79
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
bswap rbx
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
cmp bx, ax
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
