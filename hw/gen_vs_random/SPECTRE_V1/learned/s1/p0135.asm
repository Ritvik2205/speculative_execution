.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add rax, 6
and dl, dl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovno rcx, rdi
add al, 10
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
adc al, -82
cmp al, 13
xor rsi, 75
sbb bl, dl
add dl, bl
and rcx, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
