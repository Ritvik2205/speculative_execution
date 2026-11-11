.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb bx, ax
bts esi, 61
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and dil, cl
bt dx, si
btc rsi, rax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 35
cmovb ax, ax
cmovl rdx, rdx
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], esi
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
test al, dl
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 93
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
btr rcx, rsi
and bx, 32
and dl, 72 # instrumentation
cmovz edx, esi
xor sil, -126
cmovnbe rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
