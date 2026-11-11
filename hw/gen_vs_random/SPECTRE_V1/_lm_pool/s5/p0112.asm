.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and dl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
sub sil, cl
add al, 10
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, dl
lea bx, qword ptr [rax + rdx]
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
xor al, -19
lea rdx, qword ptr [rcx]
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
