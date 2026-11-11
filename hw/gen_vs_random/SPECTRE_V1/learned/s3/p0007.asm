.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, -124
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx]
not cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
