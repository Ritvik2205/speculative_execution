.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsf di, si
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
cmovns ax, bx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
and rdx, 5
or dil, sil
or al, sil
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
test esi, 1857129931
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
cmovp si, ax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 70
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
