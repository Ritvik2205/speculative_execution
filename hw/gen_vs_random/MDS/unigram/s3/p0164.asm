.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rbx, rcx
cmovp rdx, rax
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
test rcx, -613256812
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
cmovns ax, di
and rax, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
or bx, 50
btc rdi, 221
and al, 53 # instrumentation
cmovnl rax, rax
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 67
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 40
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
test edi, ebx
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
