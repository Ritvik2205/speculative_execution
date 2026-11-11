.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
test al, dl
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
test dil, -126
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax + rdi]
jmp .bb_0.2
.bb_0.2:
test al, dil
add bl, cl
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
