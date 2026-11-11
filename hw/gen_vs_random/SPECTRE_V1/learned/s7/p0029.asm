.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
sbb sil, -78
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 2
sub al, dl
lea di, qword ptr [rdx]
adc cx, -30
xor dl, 71
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
cmp dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
