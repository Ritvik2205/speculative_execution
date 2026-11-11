.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
sbb edi, 44
inc rbx
cmp sil, al
xchg rax, rdx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdx]
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
