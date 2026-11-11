.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
setno cl
sub bx, 29
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
cmp cl, dil
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
adc dil, 53
test dil, -116
jmp .bb_0.2
.bb_0.2:
lea dx, qword ptr [rcx + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
