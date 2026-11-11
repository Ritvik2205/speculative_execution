.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 21 # instrumentation
adc di, 87
add rsi, 109
lea rax, qword ptr [rbx + rbx + 82]
adc dl, sil
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor cl, -91
jb .bb_0.2
jmp .exit_0
.bb_0.2:
setnz cl
bt eax, edx
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
