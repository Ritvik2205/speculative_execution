.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
and si, 58
jmp .bb_0.1
.bb_0.1:
and dl, dl
cmp al, dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 82
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
or bl, sil
jmp .bb_0.5
.bb_0.5:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
sub dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
