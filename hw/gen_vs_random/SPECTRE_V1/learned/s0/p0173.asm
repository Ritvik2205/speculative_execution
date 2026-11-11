.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 78
cmp ecx, 46
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -23
and al, -23
sbb cl, 105
adc bl, 102
btc si, dx
cmp cx, 19
bt eax, 78
add bl, bl
cmp al, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
