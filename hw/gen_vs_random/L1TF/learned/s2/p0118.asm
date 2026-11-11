.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, cx
or cl, sil
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
test dl, -37
jmp .bb_0.3
.bb_0.3:
lea rax, qword ptr [rsi]
and bl, dil
jmp .bb_0.4
.bb_0.4:
test di, cx
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
add cl, al
jmp .bb_0.5
.bb_0.5:
lea rcx, qword ptr [rdi + rax + 11]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
