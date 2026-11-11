.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
mov bl, dil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, sil
and dil, -93
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jb .bb_0.3
jmp .bb_0.4
.bb_0.3:
add dl, 47
jle .bb_0.4
jmp .exit_0
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
add al, -13
sbb al, -107
imul rax, rsi, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
