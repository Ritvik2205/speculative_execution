.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
xor rdi, -9
and di, 91
btr dx, 47
xor al, cl
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
xor al, al
cmovnl ax, si
and cl, 21 # instrumentation
cmovb bx, cx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 62
cmovnbe ebx, eax
cmovnb rsi, rdx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
bt eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
