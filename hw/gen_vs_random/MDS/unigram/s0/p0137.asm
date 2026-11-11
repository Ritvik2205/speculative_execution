.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 79
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
cmovbe bx, si
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
cmovnle esi, ebx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 23
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ecx
and dl, -107 # instrumentation
cmovz rdi, rax
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 63
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and bl, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
xor al, 78
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 62
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
