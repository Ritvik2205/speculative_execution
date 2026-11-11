.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, ax
adc dil, al
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
or bl, 1
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
sub al, cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, sil
xor sil, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
