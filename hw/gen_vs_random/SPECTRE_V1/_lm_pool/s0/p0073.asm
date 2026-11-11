.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
not eax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, al
cmp al, 13
and sil, 52
cmp edx, 44
jmp .bb_0.2
.bb_0.2:
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
