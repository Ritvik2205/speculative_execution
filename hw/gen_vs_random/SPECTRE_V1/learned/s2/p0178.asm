.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
add rdi, 66
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
cmovno ax, cx
or sil, dil
add dl, 47
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, dil
xor cl, dl
lea cx, qword ptr [rdx]
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
