.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
add dl, dl
cmovnp rax, rbx
and al, -68
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
test ax, 22956
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
