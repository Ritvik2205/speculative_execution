.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 117
and ax, 26813
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and dil, 58
sbb bl, dl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor al, 89
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
