.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 20 # instrumentation
cmovp si, cx
or rdi, rax
and dl, -5 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
bt eax, edx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and dl, dil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cmovnbe edx, esi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
xor dil, 81
and cl, -49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ebx
not rcx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
cmovz si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
