.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
xor sil, cl
bts rsi, rcx
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
cmovns rbx, rdi
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
cmovp eax, edx
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
cmovnp rdi, rdx
cmovnp rdx, rcx
test dl, 27
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
and rdi, 29
or rcx, -17
cmovnp rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
