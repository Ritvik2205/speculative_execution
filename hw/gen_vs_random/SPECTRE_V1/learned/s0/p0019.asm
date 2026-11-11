.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 112 # instrumentation
adc sil, al
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and al, dil
neg al
lea ax, qword ptr [rcx + rdx + 86]
and al, 33
js .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
