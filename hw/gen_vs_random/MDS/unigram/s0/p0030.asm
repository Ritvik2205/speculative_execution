.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edx
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and bl, dil
cmovnp rbx, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 31
and bl, 71
and cl, 122 # instrumentation
cmovnb rcx, rax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
and ax, dx
cmovbe bx, bx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 52
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
test sil, dil
cmovnz rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
or dil, -57
cmovz ax, si
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
test dil, -67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
