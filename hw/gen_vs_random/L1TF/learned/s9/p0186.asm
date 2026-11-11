.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
sbb cl, -11
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -32
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 99
cmovnz rbx, rax
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
