.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 127
xor bl, cl
test al, 127
or cl, sil
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
xor al, -89
jmp .bb_0.1
.bb_0.1:
test sil, -55
and cl, -19
jmp .bb_0.2
.bb_0.2:
test bl, 65
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
test edi, -1252846009
xor ax, -23364
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
