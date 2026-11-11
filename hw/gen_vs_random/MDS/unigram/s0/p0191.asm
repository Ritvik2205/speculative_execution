.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
xor rax, -1657511731
xor ebx, 16
bts ebx, esi
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
xor al, dil
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
bt ecx, 22
and al, 14
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
cmovbe bx, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
btr di, bx
cmovnbe rax, rdi
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
bt cx, bx
and al, 42 # instrumentation
cmovz eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
