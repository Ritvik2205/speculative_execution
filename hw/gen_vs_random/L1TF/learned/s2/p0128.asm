.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -71 # instrumentation
adc edi, edi
add dl, -1
test sil, bl
jmp .bb_0.1
.bb_0.1:
test esi, 69
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
lea ebx, qword ptr [rdx]
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and edi, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
