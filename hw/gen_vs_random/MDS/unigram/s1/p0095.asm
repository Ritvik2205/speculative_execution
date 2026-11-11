.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns cx, bx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 88
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
cmovb di, cx
cmovno ebx, ecx
cmovnb cx, dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdx]
or al, cl
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
cmovnl rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
bt edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
