.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 75
xor al, -19
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
and sil, -56
and rcx, -63
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 49
and dl, -108 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
or ax, ax
not rax
or dx, si
xor esi, esi
test bl, dil
bt rcx, rsi
btr rcx, 98
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
