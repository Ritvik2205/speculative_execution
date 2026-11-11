.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rax, rax
not al
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 32
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
or rbx, -72
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and sil, dil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 30
and dl, 57 # instrumentation
cmovnb ax, di
btr rcx, 25
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and si, -121
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
or cl, cl
bt dx, di
cmovns si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
