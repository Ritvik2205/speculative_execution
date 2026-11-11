.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 32540
adc al, -82
adc bl, -73
xor al, cl
adc bl, 88
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
mov dl, al
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
lea rcx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
