.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
test sil, -96
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
bt ax, cx
test sil, -55
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or bl, cl
jmp .bb_0.1
.bb_0.1:
test bl, -114
or al, 25
and ax, 29207
jmp .bb_0.2
.bb_0.2:
test sil, 41
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
