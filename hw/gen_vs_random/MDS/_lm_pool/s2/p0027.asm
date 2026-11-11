.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -19
and cl, al
and dil, -62
test cl, 101
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test al, sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and cl, cl
xor rax, -843636050
and rax, 1886208862
test sil, 17
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and eax, 943733866
test dl, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
