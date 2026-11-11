.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
and al, -23
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
or eax, -1161451853
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rcx + rbx + 46]
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
