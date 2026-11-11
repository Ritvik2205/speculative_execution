.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
setb al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
or dl, 41
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
adc eax, 1725322202
sbb eax, 1392087754
and sil, -55
jmp .bb_0.3
.bb_0.3:
adc al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
