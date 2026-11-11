.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor ax, 913
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
cmp di, 71
xor al, 54
and bl, cl
setns al
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
