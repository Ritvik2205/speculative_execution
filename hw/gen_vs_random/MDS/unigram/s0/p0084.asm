.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rax, rax
or dl, dil
or cl, 100
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
test edx, 11
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
cmovb rcx, rdx
and rbx, 20
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and dl, -7
or ebx, esi
cmovs di, si
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
bts rcx, rax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
