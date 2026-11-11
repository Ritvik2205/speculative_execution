.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, sil
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
btc rcx, 20
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and dl, 61 # instrumentation
cmovl ax, dx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
cmovnz bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
btc rdi, 221
or bl, -54
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
btc si, 99
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and sil, sil
not rcx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
