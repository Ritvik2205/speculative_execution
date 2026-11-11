.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
btr rdi, 129
test dl, -85
and ebx, 64
and bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and dl, cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
not cl
cmovns ebx, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 92
cmovl rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
