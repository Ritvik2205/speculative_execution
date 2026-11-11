.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
or eax, -62
xor rdx, 122
jmp .bb_0.1
.bb_0.1:
or cl, al
lea ax, qword ptr [rbx + rsi + 97]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
mov bl, dl
cmp sil, -11
and cl, 88
cmovle rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
