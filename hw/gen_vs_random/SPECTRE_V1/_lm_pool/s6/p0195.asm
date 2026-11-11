.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
test sil, 97
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -126
or dil, 80
jmp .bb_0.2
.bb_0.2:
test bl, -8
cmp bx, 40
add bl, 70
lea rax, qword ptr [rcx]
and cl, -57
setns al
lea eax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
