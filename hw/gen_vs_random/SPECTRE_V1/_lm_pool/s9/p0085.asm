.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
imul al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
lea rax, qword ptr [rdi + rcx + 78]
sbb eax, -417098439
lea rdi, qword ptr [rsi]
sbb rbx, 54
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
dec bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
