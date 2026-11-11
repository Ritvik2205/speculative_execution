.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 13
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
cmp ebx, -33
lea si, qword ptr [rax + rdi]
mov al, bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
add al, dl
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
