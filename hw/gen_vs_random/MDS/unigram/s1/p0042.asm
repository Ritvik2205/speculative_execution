.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ax, ax
or edi, 40
or rax, -2043376621
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rbx
test dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
xor edx, edx
cmovnle eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovle esi, ecx
cmovnle rsi, rbx
and dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
test rdi, 87
cmovz rdi, rax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 45
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
