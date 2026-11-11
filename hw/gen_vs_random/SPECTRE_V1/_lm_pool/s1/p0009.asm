.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 96
add dl, cl
xor eax, 55
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or rax, -3
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sbb cl, al
cmp sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
