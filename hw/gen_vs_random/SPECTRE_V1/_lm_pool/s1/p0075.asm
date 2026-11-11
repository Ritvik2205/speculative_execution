.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
loopne .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb dl, 127
add ax, 8031
and rdx, rax
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
and bl, bl
sub cl, bl
jb .bb_0.4
jmp .exit_0
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
