.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 72 # instrumentation
cmovz edi, esi
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
cmovnbe rdx, rdx
xor eax, ecx
and dl, -127 # instrumentation
cmovno ecx, esi
xor si, 91
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
bts rcx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
bt rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
