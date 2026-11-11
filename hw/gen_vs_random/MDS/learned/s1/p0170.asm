.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
xor bl, -102
test dil, al
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
or dl, dil
and eax, -829294476
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or cl, 6
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and ax, -16061
and rax, 1886208862
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
