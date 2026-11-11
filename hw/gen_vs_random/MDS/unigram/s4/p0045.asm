.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rax, rdi
bts rdi, 91
or rdi, 67
and dl, -1 # instrumentation
cmovnb cx, si
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
btc rdx, 138
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
cmovz rbx, rax
cmovz ebx, edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
bts rcx, rbx
cmovs edx, edx
and bl, 76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
cmovs esi, esi
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
or dl, al
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rax
or bl, 73
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
