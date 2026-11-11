.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
or bx, 48
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
bt edx, 14
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and cl, 79
and al, 57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
btc ebx, 149
and rdi, rcx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
xor al, dl
xor esi, 90
test sil, cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
