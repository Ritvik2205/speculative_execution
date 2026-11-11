.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
cmovno rbx, rsi
cmovnz dx, dx
and al, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
cmovz eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
test bx, 4954
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
test esi, 425331143
bts dx, cx
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
btr rbx, 155
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
and dl, -40 # instrumentation
cmovp edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
