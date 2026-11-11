.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 92
and ax, 25351
sbb cl, cl
and dl, -111
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or eax, -1161451853
and al, -23
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmovl eax, ebx
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
