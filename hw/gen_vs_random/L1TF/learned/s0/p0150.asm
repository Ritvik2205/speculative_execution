.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
sbb al, 61
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rbx, -64
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
jmp .bb_0.1
.bb_0.1:
or al, bl
jmp .bb_0.2
.bb_0.2:
add sil, -61
or ax, 11821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
