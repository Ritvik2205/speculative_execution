.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 80
or ax, -10161
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and dl, -49
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
