.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea eax, qword ptr [rsi + rdi + 38]
sbb cl, bl
add bl, al
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 22
add ax, 6656
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
