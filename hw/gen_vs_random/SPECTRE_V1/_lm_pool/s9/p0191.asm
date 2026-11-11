.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
sub al, bl
xor bx, 47
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
neg edx
seto sil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb al, dil
and dil, dil
sbb ecx, 20
btc cx, si
setz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
