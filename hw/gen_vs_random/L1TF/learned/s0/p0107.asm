.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 13
xor bl, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rsi + rbx + 59]
sbb dil, 59
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
lea dx, qword ptr [rbx + rsi + 32]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
