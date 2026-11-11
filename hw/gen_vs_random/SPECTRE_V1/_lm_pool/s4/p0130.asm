.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc si, 6
inc dil
or ax, -114
or al, bl
inc eax
sbb dil, dl
lea bx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
