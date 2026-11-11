.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rsi]
sbb rcx, 94
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 55
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
cmovz edx, ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setns cl
xor rdi, rsi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
bt eax, 78
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], -45
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
cmovnbe edx, edi
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
imul cl
and rdi, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
