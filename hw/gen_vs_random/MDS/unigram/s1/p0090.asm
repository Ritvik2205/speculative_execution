.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 101
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
xor edx, 94
cmovz rdi, rbx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rax, 1886208862
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
cmovnb cx, di
xor rsi, -117
or bl, cl
cmovz ebx, esi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
cmovle bx, si
or dil, -78
test cx, 401
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
or dil, dil
bt dx, 228
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
