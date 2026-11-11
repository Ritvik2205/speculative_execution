.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 47
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
sub cl, bl
sbb bl, -88
cmp al, 27
jmp .bb_0.3
.bb_0.3:
lea si, qword ptr [rcx + rdi + 4]
test al, -70
adc sil, 96
test ax, 22956
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
