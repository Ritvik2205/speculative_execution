.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
add bl, bl
or sil, -44
lea ecx, qword ptr [rdx + rdx + 9]
btc bx, di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
