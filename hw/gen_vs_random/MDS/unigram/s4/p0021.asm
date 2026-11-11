.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], esi
cmovbe eax, edi
cmovno rcx, rax
cmovle bx, cx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 89
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
cmovs di, si
jmp .bb_0.1
.bb_0.1:
cmovz ebx, esi
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
and sil, cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 79
and cl, 79
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
cmovs rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
