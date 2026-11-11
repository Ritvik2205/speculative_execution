.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
xor esi, edi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
cmovns eax, esi
or bl, 127
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 27
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
test dl, al
not sil
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
btc eax, 40
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
cmovbe edi, esi
and cl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or rdx, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
