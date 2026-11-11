.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1641258390
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
sub dl, -12
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
adc al, -82
cmp bl, cl
lea ax, qword ptr [rdx + rdi + 58]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
