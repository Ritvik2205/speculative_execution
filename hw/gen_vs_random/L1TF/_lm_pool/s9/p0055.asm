.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
lea rcx, qword ptr [rax + rax]
sub bl, sil
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or dl, al
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
bts edx, 98
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
sbb edi, 10
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
