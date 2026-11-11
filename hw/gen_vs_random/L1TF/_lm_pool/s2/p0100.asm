.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
not dl
add sil, -61
test sil, 29
jmp .bb_0.1
.bb_0.1:
add al, 93
adc ax, 87
and al, -68
add sil, dl
bt edi, ecx
bt rdi, rbx
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
