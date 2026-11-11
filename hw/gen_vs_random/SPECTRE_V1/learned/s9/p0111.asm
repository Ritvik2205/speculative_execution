.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rdx, -98
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
sbb bl, dl
sub ax, -16648
sbb sil, -78
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
