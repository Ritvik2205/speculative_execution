.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
cmovz eax, ebx
cmovnz dx, dx
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 67
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and bl, 26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
cmovno rbx, rsi
test bx, 25542
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -83
jmp .bb_0.1
.bb_0.1:
test esi, 425331143
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
bts dx, cx
btr rbx, 63
and dl, -40 # instrumentation
cmovp edx, edx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
