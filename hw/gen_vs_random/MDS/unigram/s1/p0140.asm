.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
cmovns ebx, ecx
and al, -68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
xor di, -83
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and cl, 8 # instrumentation
cmovnl rax, rcx
test edi, esi
btr di, bx
or cl, cl
cmovz rax, rdi
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
bts rax, 77
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
cmovnp cx, bx
and dil, 32 # instrumentation
cmovnbe edi, eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
