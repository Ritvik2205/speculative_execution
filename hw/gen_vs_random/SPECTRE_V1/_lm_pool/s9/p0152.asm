.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
test bl, -8
adc cx, -30
xor dil, -37
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnz .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jp .bb_0.5
jmp .bb_0.6
.bb_0.5:
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 59
jmp .bb_0.6
.bb_0.6:
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
or al, dil
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
