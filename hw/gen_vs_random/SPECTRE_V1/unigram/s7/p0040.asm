.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rcx
lea bx, qword ptr [rdx]
lea rdx, qword ptr [rax + rax + 31]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
mul cl
xor bl, sil
bswap rsi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
inc edi
xor dl, cl
cmp ax, dx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
xor cl, cl
or rsi, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
