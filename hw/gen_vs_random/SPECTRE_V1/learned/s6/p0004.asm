.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
adc al, -82
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
and al, -23
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
sbb bl, -41
or di, 0b1000000000000000 # instrumentation
bsf ax, di
adc cl, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
