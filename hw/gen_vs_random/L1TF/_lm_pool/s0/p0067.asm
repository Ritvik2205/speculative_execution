.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -84
xor rdi, -80
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmovnp rsi, rdi
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and dx, 8
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
js .bb_0.4
jmp .bb_0.5
.bb_0.4:
sub sil, -99
jmp .bb_0.5
.bb_0.5:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 74
mov bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
