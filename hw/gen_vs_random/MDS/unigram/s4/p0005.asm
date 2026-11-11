.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
cmovnb edx, eax
cmovnb dx, cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
cmovz rcx, rdi
cmovo ebx, eax
btr ebx, edx
or edi, -88
xor dl, -19
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
bts di, bx
cmovle rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
