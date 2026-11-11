.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
cmp rdx, -19
sbb eax, 1830317432
cmp dil, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 84
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and dil, -93
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
