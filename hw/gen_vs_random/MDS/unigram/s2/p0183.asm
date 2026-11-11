.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
xor dil, bl
bt di, 52
and sil, -56
cmovnbe rax, rax
cmovns edi, eax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
or sil, sil
cmovp bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
or sil, -78
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
