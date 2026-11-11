.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
xor dil, dl
jmp .bb_0.1
.bb_0.1:
or dil, -113
xor dl, al
jmp .bb_0.2
.bb_0.2:
xchg sil, dl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 98
xor sil, cl
sub rcx, -90
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
