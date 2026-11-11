.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 94
jmp .bb_0.1
.bb_0.1:
test al, -104
lea rax, qword ptr [rsi + rcx + 25]
and sil, 93
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
