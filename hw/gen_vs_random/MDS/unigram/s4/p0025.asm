.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rbx, rdi
cmovbe ecx, eax
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 74
test rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
btc rdi, rdi
and dl, 93 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
xor rbx, 89
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
cmovnp bx, si
xor sil, -15
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
