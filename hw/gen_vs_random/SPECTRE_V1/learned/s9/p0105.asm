.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
mov dil, sil
lea rbx, qword ptr [rcx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
and dil, dil
mov cl, -72
xchg al, sil
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 51
cmp dil, bl
cmp bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
