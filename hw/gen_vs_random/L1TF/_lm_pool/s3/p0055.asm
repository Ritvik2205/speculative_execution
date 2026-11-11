.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 13
xor dl, bl
sub cl, -49
jmp .bb_0.1
.bb_0.1:
setp sil
sub rcx, -121
lea ecx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
mov bl, dil
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
