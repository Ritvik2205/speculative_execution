.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, sil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
cmovbe rsi, rcx
btc rax, rsi
and al, 49
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
cmovbe eax, eax
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and bl, bl
cmovz edi, edx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 10
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
cmovns bx, cx
or dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
