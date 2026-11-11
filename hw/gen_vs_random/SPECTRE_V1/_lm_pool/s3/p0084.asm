.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
cmp esi, 91
sbb bl, dil
or al, 19
test cl, -120
jl .bb_0.1
jmp .exit_0
.bb_0.1:
inc rax
sub cl, al
sbb eax, 1392087754
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
