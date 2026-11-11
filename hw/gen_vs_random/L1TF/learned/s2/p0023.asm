.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, dx
cmp edi, 21
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and bx, 70
and bl, cl
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
