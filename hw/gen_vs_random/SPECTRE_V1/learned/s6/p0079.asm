.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
sub al, dl
setb cl
sub al, cl
sub cl, bl
sbb cl, sil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
