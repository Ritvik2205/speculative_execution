.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ax, si
or rcx, 59
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovbe dx, ax
xor dx, cx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
cmovz dx, ax
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
test eax, 758789512
cmovnp rdx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
xor ecx, 21
and dl, -7
btr cx, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
