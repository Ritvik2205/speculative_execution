.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and ax, 26813
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
