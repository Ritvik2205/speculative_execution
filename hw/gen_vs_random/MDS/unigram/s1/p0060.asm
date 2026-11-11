.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and si, -121
cmovp ax, bx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
xor di, si
test dil, 46
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and cl, 126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
or al, dil
test eax, -409834435
and bl, -5 # instrumentation
cmovnl dx, di
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and dil, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
cmovz si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
