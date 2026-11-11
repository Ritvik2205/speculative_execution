.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
xor cl, 89
sub al, -3
or ax, -18131
jmp .bb_0.1
.bb_0.1:
add cl, 65 # instrumentation
cmovo rcx, rdi
xor dl, 64
btr bx, ax
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
adc dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
