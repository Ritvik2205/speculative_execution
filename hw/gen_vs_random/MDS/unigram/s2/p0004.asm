.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
and dl, -73
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
btr rbx, rcx
xor cl, dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
btr ebx, edi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
test esi, 1857129931
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
bt dx, si
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
