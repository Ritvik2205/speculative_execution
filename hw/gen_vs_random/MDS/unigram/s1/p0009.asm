.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
bt rdi, 36
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edx
and dl, -24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
cmovp ax, si
btr si, ax
test rsi, 53
or al, -61
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
cmovz edi, edi
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
cmovno rbx, rax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
