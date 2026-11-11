.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or al, cl
test edx, -372470678
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and dil, 23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
xor al, al
cmovnle ax, dx
or bl, -54
test al, 91
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
btc rcx, rcx
btc ecx, 54
xor bx, 99
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 30
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
cmovnp di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
