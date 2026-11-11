.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 69
cmp eax, 100
sub al, -82
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
test rcx, rbx
or rbx, 73
jmp .bb_0.1
.bb_0.1:
cmovs si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
