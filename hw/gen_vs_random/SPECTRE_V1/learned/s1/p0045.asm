.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 21910
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
cmp al, dil
and al, -54
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 73
sub cl, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, dil
sub di, 43
cmovnbe rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
