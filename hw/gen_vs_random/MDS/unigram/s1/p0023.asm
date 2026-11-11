.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 89
and dl, 23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test rbx, 2
btr si, bx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
jmp .bb_0.1
.bb_0.1:
bt rdx, 38
and sil, -69
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and al, 14
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
bt rbx, rbx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
cmovl di, ax
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
