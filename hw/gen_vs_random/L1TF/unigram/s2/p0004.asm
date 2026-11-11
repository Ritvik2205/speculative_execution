.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
xor ecx, 26
cmovns rcx, rdi
cmovnp rdi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
lea rax, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sbb rcx, 66
cmovo ax, si
cwde
bt rbx, 83
cmovnp cx, si
xchg rax, rdx
xor edi, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
