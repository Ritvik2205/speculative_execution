.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
sbb ebx, 21
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
dec bx
mov cl, dl
lea eax, qword ptr [rbx]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
cmovnp di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
