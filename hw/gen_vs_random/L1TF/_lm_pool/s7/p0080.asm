.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test sil, 29
add cx, 47
btc ax, si
sbb cl, -11
and al, cl
inc edi
jmp .bb_0.2
.bb_0.2:
and bl, -56 # instrumentation
cmovnle ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
