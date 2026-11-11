.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
test dl, -37
sbb bl, sil
jmp .bb_0.4
.bb_0.4:
add cl, -36
jmp .bb_0.5
.bb_0.5:
and al, 32 # instrumentation
cmovnbe eax, ecx
jmp .bb_0.6
.bb_0.6:
and cx, -79
lea rax, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
