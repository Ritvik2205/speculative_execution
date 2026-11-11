.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, si
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
cmovns eax, esi
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
test rdx, 29
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 30
and bx, 10
btr si, si
and dl, dl
xor bl, -27
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
test ebx, esi
cmovb esi, ecx
and cl, 18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
or ax, -20176
and al, 20 # instrumentation
cmovp dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
