.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
test al, 66
test sil, -96
test rbx, 45
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
xor dl, -19
not cl
test dil, -51
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
and sil, -56
or al, dil
xor al, -19
and ax, 29207
or dl, al
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
