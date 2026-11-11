.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 848176907
sub al, bl
adc sil, -77
or si, 16
movzx edi, bx
lea ax, qword ptr [rdx + rsi + 96]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -1
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
