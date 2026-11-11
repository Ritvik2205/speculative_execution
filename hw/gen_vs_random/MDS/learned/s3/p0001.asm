.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
bt edi, 254
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
xor edi, -47
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
cmovle ebx, edi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and dl, 110 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], dx
mov bl, sil
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rax
bts eax, 103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
