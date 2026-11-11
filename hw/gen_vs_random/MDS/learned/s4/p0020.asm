.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or cl, sil
jmp .bb_0.1
.bb_0.1:
or al, 24
xor al, -19
or dil, -76
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
xor bl, -102
jmp .bb_0.3
.bb_0.3:
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
test dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
