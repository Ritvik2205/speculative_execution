.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -125
and bl, 11
test eax, 758789512
bts ecx, edi
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 16
cmovbe di, di
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rbx]
cmovl rsi, rcx
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 87
btc rdx, rsi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
btc rsi, rcx
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
cmovnp ax, cx
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
and dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
