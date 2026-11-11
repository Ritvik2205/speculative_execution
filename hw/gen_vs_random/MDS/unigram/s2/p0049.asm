.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 35
or dil, bl
and dl, -107 # instrumentation
cmovz rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 48
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
and dil, 40
and dx, 72
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
bts ax, di
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
btr si, 21
and dl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 100
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
