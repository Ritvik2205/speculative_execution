.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rbx, rsi
and rcx, 107
bts bx, 3
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 44
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
or ecx, 90
test sil, dil
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
btr rdx, rax
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 37
or esi, -110
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
btc cx, 115
and cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
