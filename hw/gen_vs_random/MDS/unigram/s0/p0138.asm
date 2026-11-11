.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
test ebx, 245771113
and bl, cl
cmovz rbx, rdx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
cmovz edx, esi
btr dx, 15
and al, -26 # instrumentation
cmovnp rdx, rax
xor bl, bl
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cl, -109 # instrumentation
not rax
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
or dil, -57
or cl, al
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi]
bts rax, 149
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
xor dil, cl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
