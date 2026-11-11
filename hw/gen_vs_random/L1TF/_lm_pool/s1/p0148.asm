.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -56
test al, -84
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, -32
test al, -70
jmp .bb_0.2
.bb_0.2:
add bl, cl
and al, al
jmp .bb_0.3
.bb_0.3:
cmp dl, -93
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
