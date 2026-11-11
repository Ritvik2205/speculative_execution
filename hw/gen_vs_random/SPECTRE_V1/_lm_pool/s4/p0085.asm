.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rax, -1365488374
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub dil, -111
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
or bl, al
and ax, 21910
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
