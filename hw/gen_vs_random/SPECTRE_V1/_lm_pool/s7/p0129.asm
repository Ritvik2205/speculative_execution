.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
and sil, 11
jno .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -75
sbb cl, 105
xchg dl, cl
mov al, dil
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
add al, -13
sub cl, -21
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
