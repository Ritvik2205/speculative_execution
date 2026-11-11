.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
bts dx, si
cmovz ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
or al, 16
cmovz ecx, ecx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 36
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
test cl, 73
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
cmovz esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
bt edx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and sil, 84 # instrumentation
cmovbe si, dx
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
