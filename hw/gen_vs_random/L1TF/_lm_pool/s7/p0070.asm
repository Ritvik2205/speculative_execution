.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and al, -68
test ebx, 88
test bl, -92
not cl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
or rdi, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
