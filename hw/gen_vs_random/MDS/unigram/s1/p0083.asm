.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
test bx, 4954
and bl, 8 # instrumentation
cmovz rax, rbx
cmovnle rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
btc edx, 75
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 53
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 32
bts ax, 22
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
btc si, ax
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or sil, -49
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
btr dx, di
test dl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
