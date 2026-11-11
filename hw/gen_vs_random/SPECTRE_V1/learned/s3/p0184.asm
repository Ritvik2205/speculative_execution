.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 70
sbb eax, -417098439
and al, bl
test bl, -8
not edx
add bl, 70
mov al, cl
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
test cl, -33
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
