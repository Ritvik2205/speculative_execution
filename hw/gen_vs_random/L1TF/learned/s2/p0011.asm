.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dil, sil
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
or al, al
sub sil, -99
jmp .bb_0.1
.bb_0.1:
or dl, bl
or sil, bl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
