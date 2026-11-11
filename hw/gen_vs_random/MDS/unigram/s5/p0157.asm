.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
test rdi, 90
cmovb rax, rax
cmovnz eax, edx
cmovp dx, si
not dil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 64
or di, ax
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
xor cl, 98
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rcx, -63
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and cl, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
