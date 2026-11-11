.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
neg cl
cmp bl, cl
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add bl, 70
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp al, -77
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
xor bx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
