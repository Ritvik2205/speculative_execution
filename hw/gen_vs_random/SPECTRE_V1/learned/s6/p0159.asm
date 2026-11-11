.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
sub al, bl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, sil
sub al, bl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
lea ax, qword ptr [rdi + rcx + 83]
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
