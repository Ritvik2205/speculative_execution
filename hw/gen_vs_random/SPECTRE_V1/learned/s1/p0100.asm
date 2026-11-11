.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add al, 10
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
lea ax, qword ptr [rsi]
mov bl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test dl, -7
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
add ebx, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
