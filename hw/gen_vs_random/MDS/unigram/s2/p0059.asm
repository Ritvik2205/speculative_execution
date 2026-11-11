.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 77
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
and al, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 59
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
or di, -18
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
or esi, 57
btc rdi, 6
btc bx, di
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 99
cmovo ax, si
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
or bx, 98
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
test bl, sil
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
