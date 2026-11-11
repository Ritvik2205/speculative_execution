.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and ax, 21910
xchg al, dl
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
xchg al, dil
sbb dl, 127
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 43
sub al, -66
bswap rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
