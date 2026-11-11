.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo bx, dx
test rbx, 44
or dl, -97
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
or bl, 127
and cl, -44 # instrumentation
cmovno rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
or rsi, 67
cmovz rdx, rdi
bt esi, 3
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and dil, -62
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 13
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
