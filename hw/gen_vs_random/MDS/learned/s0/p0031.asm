.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
or dl, cl
and dil, dil
or al, bl
or di, 30
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and dl, sil
xor al, 122
xor al, sil
xor al, 115
test al, -81
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
