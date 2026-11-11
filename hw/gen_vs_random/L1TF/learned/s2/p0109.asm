.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 45
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
test cl, dl
jmp .bb_0.1
.bb_0.1:
sub rax, 57846954
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
bt cx, 53
and dil, -82
btc ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
