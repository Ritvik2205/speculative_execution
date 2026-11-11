.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 34
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
mov cl, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
and bl, 87
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
sub al, 63
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
