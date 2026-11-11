.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 12
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 48
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 12
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rax, 1713273566
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
