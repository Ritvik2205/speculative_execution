.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, dx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and al, bl
and bl, 89
cmovs dx, bx
sub al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
