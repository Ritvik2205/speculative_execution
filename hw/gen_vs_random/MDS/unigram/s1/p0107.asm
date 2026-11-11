.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 34
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
bts rsi, rax
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
cmovle bx, ax
bt eax, 37
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 43
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
test esi, 1857129931
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
