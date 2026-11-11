.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
bt rsi, rcx
or edi, ecx
add edi, -91
btc ebx, ebx
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
nop
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
sub rax, rdx
seto sil
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
