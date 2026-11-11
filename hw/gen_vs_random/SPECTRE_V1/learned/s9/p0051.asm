.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
sbb sil, -78
add cl, dil
and al, 33
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
loopne .bb_0.2
jmp .bb_0.3
.bb_0.2:
setz cl
sbb cl, bl
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
jle .bb_0.4
jmp .exit_0
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
