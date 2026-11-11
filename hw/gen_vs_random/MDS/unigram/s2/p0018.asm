.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe bx, si
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
test esi, 1857129931
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
and bl, dl
and sil, -69
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or bl, dl
cmovz rdx, rdx
test ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
and dl, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
btc di, dx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
or ecx, ebx
bt rdi, 36
cmovo bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
