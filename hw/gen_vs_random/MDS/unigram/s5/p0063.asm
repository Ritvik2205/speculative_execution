.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and dil, sil
or rsi, 74
cmovns rdx, rdx
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and bl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
test dl, 9
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
cmovnbe rcx, rdi
or bl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
