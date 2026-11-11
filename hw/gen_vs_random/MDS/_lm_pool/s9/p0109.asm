.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 47
or al, 37
and si, -121
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
test al, sil
xor dil, cl
jmp .bb_0.1
.bb_0.1:
or dl, -31
xor rcx, 71
or bl, al
or dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
