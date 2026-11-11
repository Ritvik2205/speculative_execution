.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
bts bx, ax
cmovno rbx, rcx
test ecx, -1843375753
and rax, rbx
cmovns rsi, rbx
or dil, dl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 55
and cl, 126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and cl, -111
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
or dil, al
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
