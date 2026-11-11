.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
test al, -104
and si, 96
or bl, cl
and rdx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdx]
xchg al, sil
and al, -68
and dl, -86
and dil, 58
sub bl, -96
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
