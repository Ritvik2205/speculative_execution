.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, cl
add dil, dil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
add al, cl
sbb al, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
add al, -47
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
add cl, sil
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
