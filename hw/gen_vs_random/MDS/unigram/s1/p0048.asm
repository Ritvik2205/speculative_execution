.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
btr bx, bx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
test rax, rax
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and dl, 120 # instrumentation
cmovnz edx, ebx
xor cl, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
or sil, dil
and rdx, 76
cmovnz dx, dx
bts ax, 22
and dl, 81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
cmovno rax, rax
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
test cl, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
