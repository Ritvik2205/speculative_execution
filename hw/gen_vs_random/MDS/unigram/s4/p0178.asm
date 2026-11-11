.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and ax, 5001
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
or eax, -696456144
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 31
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
or sil, -49
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
or dil, -78
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
cmovz cx, cx
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
bts cx, 14
cmovs rcx, rax
or cx, ax
xor bx, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
