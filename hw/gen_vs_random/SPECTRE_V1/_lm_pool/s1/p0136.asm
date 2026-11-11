.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
adc al, cl
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, dl
sbb dil, dil
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
or edi, 21
bt ebx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
