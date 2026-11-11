.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and dl, 23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and rbx, 65
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and cl, 79
cmovnp rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
cmovbe dx, cx
or si, 94
cmovno rcx, rsi
or al, dl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
