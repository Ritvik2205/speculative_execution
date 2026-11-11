.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and al, dl
xor cl, 78
and dl, bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
sbb al, -107
lea cx, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
