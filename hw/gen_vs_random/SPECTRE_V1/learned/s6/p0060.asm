.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
lea ecx, qword ptr [rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
sub al, dl
add al, dl
jb .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
test cl, -33
cmp rsi, 53
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
adc cl, dil
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
