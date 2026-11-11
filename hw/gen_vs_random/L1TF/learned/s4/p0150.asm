.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 114
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
lea ebx, qword ptr [rax + rdi]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
mov cl, cl
jmp .bb_0.5
.bb_0.5:
add al, -102
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
add bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
