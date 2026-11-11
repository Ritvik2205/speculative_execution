.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
and cl, 78 # instrumentation
cmovs dx, ax
test bl, -14
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or rcx, 54
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], edx
test al, -7
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 14
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and al, 14
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
btc bx, 104
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
