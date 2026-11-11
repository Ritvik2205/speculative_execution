.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, ax
lea si, qword ptr [rsi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg bl, dil
jnz .bb_0.3
jmp .bb_0.4
.bb_0.3:
js .bb_0.4
jmp .exit_0
.bb_0.4:
xor eax, 55
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sbb al, bl
lea rax, qword ptr [rbx + rdi + 37]
xor al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
