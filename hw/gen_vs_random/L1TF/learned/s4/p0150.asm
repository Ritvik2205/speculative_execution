.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 1
sub al, 26
jmp .bb_0.1
.bb_0.1:
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
btr ax, 16
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and bl, al
btc ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
