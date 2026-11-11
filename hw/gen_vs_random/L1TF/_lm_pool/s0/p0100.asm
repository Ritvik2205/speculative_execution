.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
or al, -5
test al, bl
sbb bl, -88
xor dl, 64
jmp .bb_0.1
.bb_0.1:
xor cl, sil
jmp .bb_0.2
.bb_0.2:
and bx, 63
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
add cx, 67
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
