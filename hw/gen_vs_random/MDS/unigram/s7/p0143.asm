.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
cmovnz esi, edi
and bl, 45 # instrumentation
cmovnb di, bx
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
not rax
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
cmovnb bx, dx
xor dil, dil
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
