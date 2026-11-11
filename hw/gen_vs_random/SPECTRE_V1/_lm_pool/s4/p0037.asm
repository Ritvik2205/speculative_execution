.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
bt eax, 78
cmovno bx, di
xchg sil, al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
lea di, qword ptr [rbx + rsi]
add al, dil
jmp .bb_0.2
.bb_0.2:
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
