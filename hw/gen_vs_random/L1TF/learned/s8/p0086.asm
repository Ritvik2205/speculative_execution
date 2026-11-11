.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
test al, bl
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
sub rcx, -90
lea di, qword ptr [rsi + rdx + 64]
and ax, 7954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
