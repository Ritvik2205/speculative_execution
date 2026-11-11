.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb edx, ebx
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
add dil, 72
xchg rdx, rbx
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
sub cl, bl
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
sbb cl, al
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
