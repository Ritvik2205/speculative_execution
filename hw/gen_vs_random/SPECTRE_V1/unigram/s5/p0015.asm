.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
and al, -54
bswap rcx
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
test cl, -33
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax, eax, 54
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
btc ecx, 33
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 80
btr rax, rdi
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
cmp sil, sil
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
