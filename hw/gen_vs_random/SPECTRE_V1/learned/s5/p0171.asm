.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
mov al, dil
xchg ebx, edx
test dl, 113
sbb cl, 105
cmovb si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
