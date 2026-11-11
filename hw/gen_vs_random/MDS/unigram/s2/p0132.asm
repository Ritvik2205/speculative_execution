.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rax, rdi
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
btc si, cx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
btr ecx, esi
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 61
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 30
test bx, ax
and al, -10 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
cmovnb dx, si
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 58
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
btc rcx, rcx
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
btr rdx, 98
and cl, -19
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
