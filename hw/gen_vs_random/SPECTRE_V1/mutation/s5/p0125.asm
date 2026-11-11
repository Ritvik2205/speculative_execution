.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
add al, -109
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
xchg bl, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and al, bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
bswap rbx
sbb bl, -41
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
cmp bx, ax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
