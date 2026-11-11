.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rsi]
cmp rbx, 4
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 55
sub al, -75
jmp .bb_0.2
.bb_0.2:
xchg bx, dx
add al, -80
jmp .bb_0.3
.bb_0.3:
test al, 15
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
