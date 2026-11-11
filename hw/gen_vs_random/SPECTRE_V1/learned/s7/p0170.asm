.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmp al, bl
sub cl, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rax, -1128038253
lea ax, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
and bl, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
