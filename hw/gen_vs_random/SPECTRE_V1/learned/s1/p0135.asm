.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 27
adc cl, -81
test al, -71
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and dil, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
lea dx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
