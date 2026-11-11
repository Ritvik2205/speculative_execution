.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -125
xor cl, 15
cmovb bx, si
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
xor dx, 54
cmovnb ax, bx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and dl, 16 # instrumentation
cmovle eax, eax
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 73
btc ax, cx
bts dx, 50
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
bts rbx, rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
btr rax, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
