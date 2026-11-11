.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
test cl, 65
cmp si, 92
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
btc ax, dx
jmp .bb_0.2
.bb_0.2:
or dl, bl
xchg dl, bl
adc cl, al
or si, 11
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
