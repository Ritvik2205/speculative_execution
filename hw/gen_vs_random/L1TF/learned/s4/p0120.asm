.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 45
xor al, sil
or dl, al
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add dl, -52 # instrumentation
adc si, 3
cmp rsi, 87
jmp .bb_0.3
.bb_0.3:
xor dx, 13
or rsi, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
