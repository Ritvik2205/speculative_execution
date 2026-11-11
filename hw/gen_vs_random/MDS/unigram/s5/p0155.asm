.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ecx, edx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
bt rax, 89
and sil, 89
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
cmovnb eax, ecx
jmp .bb_0.1
.bb_0.1:
not sil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
or rbx, rax
and dl, 93 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or si, di
and ax, di
and al, 67 # instrumentation
cmovl rdx, rbx
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and al, -83 # instrumentation
cmovnp rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
