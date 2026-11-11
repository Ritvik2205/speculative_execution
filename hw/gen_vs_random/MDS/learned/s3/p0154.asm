.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
or cl, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test sil, al
jmp .bb_0.3
.bb_0.3:
and bl, bl
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
jmp .bb_0.6
.bb_0.6:
or cl, 7
jmp .bb_0.7
.bb_0.7:
or bl, 43
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
xor al, 9
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
