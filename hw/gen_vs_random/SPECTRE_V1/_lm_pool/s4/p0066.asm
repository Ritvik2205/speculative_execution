.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 3
adc bl, -76
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, bl
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
sub cl, al
jmp .bb_0.2
.bb_0.2:
sub al, -89
or dil, 98
sub al, bl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
