.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1276549484
xor sil, cl
sbb al, 33
movsx dx, dil
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, al
test dl, -105
sub cl, dl
sub bl, -6
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
