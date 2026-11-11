.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
or cl, 10
not dx
cmovnbe cx, dx
or si, 22
cmovnle edi, eax
btc rax, rbx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 54
xor al, -28
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 38
btc di, bx
and ax, -30938
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
test sil, sil
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and sil, 122 # instrumentation
cmovnbe esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
