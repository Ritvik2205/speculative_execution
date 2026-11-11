.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 76
cmp bl, al
lea bx, qword ptr [rdi + rdx + 6]
and rcx, -29
lea rcx, qword ptr [rax + rsi]
and sil, al
sub dl, bl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, 59
cmp edx, 44
adc dil, 50
lea ax, qword ptr [rdx + rcx + 43552]
jmp .bb_0.2
.bb_0.2:
xchg al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
