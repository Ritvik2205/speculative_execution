.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 61
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb sil, dl
sub sil, -18
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp eax, -563371897
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 26
jmp .bb_0.3
.bb_0.3:
test al, -75
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
