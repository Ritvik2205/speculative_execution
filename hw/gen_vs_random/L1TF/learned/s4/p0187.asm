.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 60
dec bl
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add dl, -5 # instrumentation
adc cl, dl
jmp .bb_0.2
.bb_0.2:
test sil, 29
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
add al, 74
sub al, dl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
