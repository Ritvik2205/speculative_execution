.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ecx, edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
cmovnbe eax, esi
or bl, cl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 81
cmovo ax, si
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
cmovnp rcx, rbx
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
btr dx, 47
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
bt eax, 37
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 2
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
test dl, -85
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
