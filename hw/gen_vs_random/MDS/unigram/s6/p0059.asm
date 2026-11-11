.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edi
and al, cl
and cx, -2
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
test ax, bx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 43
test sil, 17
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
bts rdi, 130
btr dx, 47
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
or bx, 1
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
cmovz edi, esi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
