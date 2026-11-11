.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -75
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add rcx, 23
mov bl, dl
jmp .bb_0.2
.bb_0.2:
jno .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
add cl, -127
jmp .bb_0.5
.bb_0.5:
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
