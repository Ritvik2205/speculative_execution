.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
lea rsi, qword ptr [rdx + rdx]
add cl, -127
lea rsi, qword ptr [rcx + rdi + 12]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
cmp ecx, 13
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and di, 10
sbb bl, cl
add cl, -127
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
