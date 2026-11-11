.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, cx
xor si, 91
not rax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
cmovnp edx, edi
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
cmovz rsi, rax
jmp .bb_0.1
.bb_0.1:
or al, dil
and dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rdx, rcx
bts di, 37
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
xor edi, ecx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
