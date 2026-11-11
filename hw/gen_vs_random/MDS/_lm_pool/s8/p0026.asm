.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
or cl, 6
and sil, cl
xor ax, -12492
and al, cl
jmp .bb_0.1
.bb_0.1:
and sil, -69
test al, 66
xor cl, bl
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 27
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
