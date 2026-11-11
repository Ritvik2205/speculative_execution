.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
and rax, 1713273566
sbb cl, 105
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
sub al, dil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
mov al, dl
test bl, -8
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
