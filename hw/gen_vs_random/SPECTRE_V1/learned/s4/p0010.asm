.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
and al, -23
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dil, sil
test cl, -62
setns al
cmp cx, 88
and ax, 21910
dec bl
jmp .bb_0.2
.bb_0.2:
adc eax, 56
lea rbx, qword ptr [rdx + rdi + 58]
lea rax, qword ptr [rsi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
