.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
setnz bl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 78
or ax, 11821
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
lea rsi, qword ptr [rdi + rdx + 32]
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub rcx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
