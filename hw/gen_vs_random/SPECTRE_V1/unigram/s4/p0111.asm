.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
sub dl, bl
sbb al, sil
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
sbb dil, -93
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
add al, -47
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
add dil, cl
sub sil, -18
nop
xchg al, sil
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rsi], cx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
lea rcx, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
