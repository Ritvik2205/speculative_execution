.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
lea ebx, qword ptr [rcx]
adc bl, dil
sub dil, -111
sub al, -1
jmp .bb_0.1
.bb_0.1:
test cl, -62
cmp dl, cl
lea edx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
