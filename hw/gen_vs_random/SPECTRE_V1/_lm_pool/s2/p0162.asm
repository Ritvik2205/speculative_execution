.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -82
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
sub rbx, -11
test dl, -36
test bl, -8
sbb eax, 1830317432
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
