.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
or si, si
adc cl, -34
adc bl, dl
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle eax, ecx
or bx, 90
lea rdx, qword ptr [rax + rdi]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
