.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
test si, dx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
sub rcx, -90
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
cmovle rbx, rax
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
add dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
