.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, cx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
or ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 8
btc edi, 40
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
cmovle rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 14
and dl, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
bts si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
not ax
or rsi, rax
and dl, -7
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 19
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
